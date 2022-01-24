#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct packet_writer {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int flags; int /*<<< orphan*/  oid; scalar_t__ parsed; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_4__ {struct object object; } ;
struct TYPE_3__ {struct object* item; } ;

/* Variables and functions */
 int CLIENT_SHALLOW ; 
 int NOT_SHALLOW ; 
 int /*<<< orphan*/  FUNC0 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 struct object_array extra_edge_obj ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct packet_writer *writer,
			   const struct object_array *shallows,
			   struct object_array *want_obj)
{
	int i;

	for (i = 0; i < shallows->nr; i++) {
		struct object *object = shallows->objects[i].item;
		if (object->flags & NOT_SHALLOW) {
			struct commit_list *parents;
			FUNC2(writer, "unshallow %s",
					    FUNC1(&object->oid));
			object->flags &= ~CLIENT_SHALLOW;
			/*
			 * We want to _register_ "object" as shallow, but we
			 * also need to traverse object's parents to deepen a
			 * shallow clone. Unregister it for now so we can
			 * parse and add the parents to the want list, then
			 * re-register it.
			 */
			FUNC5(&object->oid);
			object->parsed = 0;
			FUNC3((struct commit *)object);
			parents = ((struct commit *)object)->parents;
			while (parents) {
				FUNC0(&parents->item->object,
						 NULL, want_obj);
				parents = parents->next;
			}
			FUNC0(object, NULL, &extra_edge_obj);
		}
		/* make sure commit traversal conforms to client */
		FUNC4(the_repository, &object->oid);
	}
}