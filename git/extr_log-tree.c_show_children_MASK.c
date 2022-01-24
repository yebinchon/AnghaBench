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
struct TYPE_6__ {int /*<<< orphan*/  file; } ;
struct rev_info {TYPE_3__ diffopt; int /*<<< orphan*/  children; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {int /*<<< orphan*/  object; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct commit_list* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rev_info *opt, struct commit *commit, int abbrev)
{
	struct commit_list *p = FUNC2(&opt->children, &commit->object);
	for ( ; p; p = p->next) {
		FUNC1(opt->diffopt.file, " %s", FUNC0(&p->item->object.oid, abbrev));
	}
}