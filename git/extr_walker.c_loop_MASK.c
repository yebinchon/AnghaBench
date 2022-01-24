#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct walker {scalar_t__ (* fetch ) (struct walker*,int /*<<< orphan*/ ) ;} ;
struct object_list {struct object_list* next; struct object* item; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct object {int flags; TYPE_1__ oid; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int TO_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct object_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct walker*,struct object*) ; 
 struct object_list* process_queue ; 
 struct object_list** process_queue_end ; 
 int /*<<< orphan*/  FUNC3 (struct object*) ; 
 scalar_t__ FUNC4 (struct walker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC5(struct walker *walker)
{
	struct object_list *elem;

	while (process_queue) {
		struct object *obj = process_queue->item;
		elem = process_queue;
		process_queue = elem->next;
		FUNC0(elem);
		if (!process_queue)
			process_queue_end = &process_queue;

		/* If we are not scanning this object, we placed it in
		 * the queue because we needed to fetch it first.
		 */
		if (! (obj->flags & TO_SCAN)) {
			if (walker->fetch(walker, obj->oid.hash)) {
				FUNC3(obj);
				return -1;
			}
		}
		if (!obj->type)
			FUNC1(the_repository, &obj->oid);
		if (FUNC2(walker, obj))
			return -1;
	}
	return 0;
}