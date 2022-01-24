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
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct tree {TYPE_1__ object; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct tree* FUNC0 (struct repository*,struct object_id*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct object_id*,char const*) ; 

__attribute__((used)) static struct tree *FUNC4(struct repository *repo,
				      struct tree *one, struct tree *two,
				      const char *subtree_shift)
{
	struct object_id shifted;

	if (!*subtree_shift) {
		FUNC2(repo, &one->object.oid, &two->object.oid, &shifted, 0);
	} else {
		FUNC3(repo, &one->object.oid, &two->object.oid, &shifted,
			      subtree_shift);
	}
	if (FUNC1(&two->object.oid, &shifted))
		return two;
	return FUNC0(repo, &shifted);
}