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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; struct object_id const oid; } ;

/* Variables and functions */
 scalar_t__ OBJ_TAG ; 
 struct object* FUNC0 (int /*<<< orphan*/ ,struct object*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC5(const char *name, const struct object_id *oid,
			 int flag, void *cb_data)
{
	const char *name_nons = FUNC4(name);
	struct strbuf *buf = cb_data;
	struct object *o = FUNC2(the_repository, oid);
	if (!o)
		return 0;

	FUNC3(buf, "%s\t%s\n", FUNC1(oid), name_nons);
	if (o->type == OBJ_TAG) {
		o = FUNC0(the_repository, o, name, 0);
		if (!o)
			return 0;
		FUNC3(buf, "%s\t%s^{}\n", FUNC1(&o->oid),
			    name_nons);
	}
	return 0;
}