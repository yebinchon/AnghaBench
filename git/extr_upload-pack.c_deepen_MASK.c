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
struct packet_writer {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int /*<<< orphan*/  flags; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {struct object* item; } ;

/* Variables and functions */
 int INFINITE_DEPTH ; 
 int /*<<< orphan*/  NOT_SHALLOW ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 int /*<<< orphan*/  SHALLOW ; 
 int /*<<< orphan*/  check_ref ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_array*,struct object_array*) ; 
 struct commit_list* FUNC3 (struct object_array*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct packet_writer*,struct commit_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct packet_writer*,struct object_array*,struct object_array*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC9(struct packet_writer *writer, int depth, int deepen_relative,
		   struct object_array *shallows, struct object_array *want_obj)
{
	if (depth == INFINITE_DEPTH && !FUNC5(the_repository)) {
		int i;

		for (i = 0; i < shallows->nr; i++) {
			struct object *object = shallows->objects[i].item;
			object->flags |= NOT_SHALLOW;
		}
	} else if (deepen_relative) {
		struct object_array reachable_shallows = OBJECT_ARRAY_INIT;
		struct commit_list *result;

		/*
		 * Checking for reachable shallows requires that our refs be
		 * marked with OUR_REF.
		 */
		FUNC4(check_ref, NULL);
		FUNC0(check_ref, NULL);

		FUNC2(shallows, &reachable_shallows);
		result = FUNC3(&reachable_shallows,
					     depth + 1,
					     SHALLOW, NOT_SHALLOW);
		FUNC7(writer, result);
		FUNC1(result);
		FUNC6(&reachable_shallows);
	} else {
		struct commit_list *result;

		result = FUNC3(want_obj, depth,
					     SHALLOW, NOT_SHALLOW);
		FUNC7(writer, result);
		FUNC1(result);
	}

	FUNC8(writer, shallows, want_obj);
}