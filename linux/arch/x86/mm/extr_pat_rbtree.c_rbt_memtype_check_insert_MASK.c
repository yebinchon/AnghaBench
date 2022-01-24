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
struct memtype {int type; int /*<<< orphan*/  end; int /*<<< orphan*/  subtree_max_end; int /*<<< orphan*/  start; } ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct memtype*) ; 
 int /*<<< orphan*/  memtype_rbroot ; 

int FUNC2(struct memtype *new,
			     enum page_cache_mode *ret_type)
{
	int err = 0;

	err = FUNC0(&memtype_rbroot, new->start, new->end,
						new->type, ret_type);

	if (!err) {
		if (ret_type)
			new->type = *ret_type;

		new->subtree_max_end = new->end;
		FUNC1(&memtype_rbroot, new);
	}
	return err;
}