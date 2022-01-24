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
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;

/* Variables and functions */
 int REF_ISBROKEN ; 
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,char*) ; 
 struct object* FUNC1 (struct object_id const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *path, const struct object_id *oid,
		       int flag, void *cb_data)
{
	struct rev_info *revs = (struct rev_info *)cb_data;
	struct object *object;

	if ((flag & REF_ISSYMREF) && (flag & REF_ISBROKEN)) {
		FUNC2("symbolic ref is dangling: %s", path);
		return 0;
	}

	object = FUNC1(oid, path);
	FUNC0(revs, object, "");

	return 0;
}