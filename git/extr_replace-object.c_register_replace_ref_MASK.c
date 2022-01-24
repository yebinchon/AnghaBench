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
struct repository {TYPE_1__* objects; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct replace_object {int /*<<< orphan*/  replacement; TYPE_2__ original; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  replace_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct replace_object*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct replace_object*) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 struct replace_object* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct repository *r,
				const char *refname,
				const struct object_id *oid,
				int flag, void *cb_data)
{
	/* Get sha1 from refname */
	const char *slash = FUNC6(refname, '/');
	const char *hash = slash ? slash + 1 : refname;
	struct replace_object *repl_obj = FUNC8(sizeof(*repl_obj));

	if (FUNC3(hash, &repl_obj->original.oid)) {
		FUNC2(repl_obj);
		FUNC7(FUNC0("bad replace ref name: %s"), refname);
		return 0;
	}

	/* Copy sha1 from the read ref */
	FUNC4(&repl_obj->replacement, oid);

	/* Register new object */
	if (FUNC5(r->objects->replace_map, repl_obj))
		FUNC1(FUNC0("duplicate replace ref: %s"), refname);

	return 0;
}