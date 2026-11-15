#Blue
extends Area2D
@export var speed: float = 300


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.dead == true:
		position.y = position.y + speed*delta

#detects if fireball is touching player, then die
func _on_body_entered(body: Node2D) -> void:
	if body.name == "fireball":
		Global.dead = true

func _on_swor_dor_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
