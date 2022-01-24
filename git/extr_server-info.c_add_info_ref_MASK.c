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
struct update_info_ctx {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; struct object_id const oid; } ;

/* Variables and functions */
 scalar_t__ OBJ_TAG ; 
 struct object* FUNC0 (int /*<<< orphan*/ ,struct object*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC3 (struct update_info_ctx*,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(const char *path, const struct object_id *oid,
			int flag, void *cb_data)
{
	struct update_info_ctx *uic = cb_data;
	struct object *o = FUNC2(the_repository, oid);
	if (!o)
		return -1;

	if (FUNC3(uic, "%s	%s\n", FUNC1(oid), path) < 0)
		return -1;

	if (o->type == OBJ_TAG) {
		o = FUNC0(the_repository, o, path, 0);
		if (o)
			if (FUNC3(uic, "%s	%s^{}\n",
				FUNC1(&o->oid), path) < 0)
				return -1;
	}
	return 0;
}