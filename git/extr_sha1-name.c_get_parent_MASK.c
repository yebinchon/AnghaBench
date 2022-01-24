#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_3__* item; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
typedef  enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;

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
				      struct object_id *result, int idx)
{
	struct object_id oid;
	enum get_oid_result ret = FUNC0(r, name, len, &oid,
					    GET_OID_COMMITTISH);
	struct commit *commit;
	struct commit_list *p;

	if (ret)
		return ret;
	commit = FUNC1(r, &oid);
	if (FUNC3(commit))
		return MISSING_OBJECT;
	if (!idx) {
		FUNC2(result, &commit->object.oid);
		return FOUND;
	}
	p = commit->parents;
	while (p) {
		if (!--idx) {
			FUNC2(result, &p->item->object.oid);
			return FOUND;
		}
		p = p->next;
	}
	return MISSING_OBJECT;
}