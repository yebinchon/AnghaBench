#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config_iterator ;
struct TYPE_11__ {int /*<<< orphan*/  length; } ;
struct TYPE_12__ {TYPE_2__ backends; } ;
typedef  TYPE_3__ git_config ;
struct TYPE_10__ {int /*<<< orphan*/  free; int /*<<< orphan*/  next; } ;
struct TYPE_13__ {TYPE_3__ const* cfg; int /*<<< orphan*/  i; TYPE_1__ parent; int /*<<< orphan*/  regex; } ;
typedef  TYPE_4__ all_iter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  all_iter_glob_free ; 
 int /*<<< orphan*/  all_iter_glob_next ; 
 TYPE_4__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_3__ const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

int FUNC5(git_config_iterator **out, const git_config *cfg, const char *regexp)
{
	all_iter *iter;
	int result;

	if (regexp == NULL)
		return FUNC3(out, cfg);

	iter = FUNC1(1, sizeof(all_iter));
	FUNC0(iter);

	if ((result = FUNC4(&iter->regex, regexp, 0)) < 0) {
		FUNC2(iter);
		return -1;
	}

	iter->parent.next = all_iter_glob_next;
	iter->parent.free = all_iter_glob_free;
	iter->i = cfg->backends.length;
	iter->cfg = cfg;

	*out = (git_config_iterator *) iter;

	return 0;
}