#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;

/* Variables and functions */
 int CLIENT_SHALLOW ; 
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 char const* FUNC3 (struct object_id*) ; 
 struct object* FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC6(const char *line, struct object_array *shallows)
{
	const char *arg;
	if (FUNC5(line, "shallow ", &arg)) {
		struct object_id oid;
		struct object *object;
		if (FUNC2(arg, &oid))
			FUNC1("invalid shallow line: %s", line);
		object = FUNC4(the_repository, &oid);
		if (!object)
			return 1;
		if (object->type != OBJ_COMMIT)
			FUNC1("invalid shallow object %s", FUNC3(&oid));
		if (!(object->flags & CLIENT_SHALLOW)) {
			object->flags |= CLIENT_SHALLOW;
			FUNC0(object, NULL, shallows);
		}
		return 1;
	}

	return 0;
}