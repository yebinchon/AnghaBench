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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; TYPE_2__* parents; } ;
typedef  enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;
struct TYPE_4__ {struct commit* item; } ;

/* Variables and functions */
 int FOUND ; 
 int /*<<< orphan*/  GET_OID_COMMITTISH ; 
 int MISSING_OBJECT ; 
 int FUNC0 (struct repository*,char const*,int,struct object_id*,int /*<<< orphan*/ ) ; 
 struct commit* FUNC1 (struct repository*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct commit*) ; 

__attribute__((used)) static enum get_oid_result FUNC4(struct repository *r,
					    const char *name, int len,
					    struct object_id *result,
					    int generation)
{
	struct object_id oid;
	struct commit *commit;
	int ret;

	ret = FUNC0(r, name, len, &oid, GET_OID_COMMITTISH);
	if (ret)
		return ret;
	commit = FUNC1(r, &oid);
	if (!commit)
		return MISSING_OBJECT;

	while (generation--) {
		if (FUNC3(commit) || !commit->parents)
			return MISSING_OBJECT;
		commit = commit->parents->item;
	}
	FUNC2(result, &commit->object.oid);
	return FOUND;
}