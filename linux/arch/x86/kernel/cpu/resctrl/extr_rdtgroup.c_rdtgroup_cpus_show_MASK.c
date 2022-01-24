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
struct seq_file {int dummy; } ;
struct cpumask {int dummy; } ;
struct rdtgroup {scalar_t__ mode; struct cpumask cpu_mask; TYPE_2__* plr; } ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
struct TYPE_4__ {TYPE_1__* d; } ;
struct TYPE_3__ {struct cpumask cpu_mask; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask*) ; 
 scalar_t__ FUNC1 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct rdtgroup* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kernfs_open_file *of,
			      struct seq_file *s, void *v)
{
	struct rdtgroup *rdtgrp;
	struct cpumask *mask;
	int ret = 0;

	rdtgrp = FUNC4(of->kn);

	if (rdtgrp) {
		if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED) {
			if (!rdtgrp->plr->d) {
				FUNC2();
				FUNC3("Cache domain offline\n");
				ret = -ENODEV;
			} else {
				mask = &rdtgrp->plr->d->cpu_mask;
				FUNC6(s, FUNC1(of) ?
					   "%*pbl\n" : "%*pb\n",
					   FUNC0(mask));
			}
		} else {
			FUNC6(s, FUNC1(of) ? "%*pbl\n" : "%*pb\n",
				   FUNC0(&rdtgrp->cpu_mask));
		}
	} else {
		ret = -ENOENT;
	}
	FUNC5(of->kn);

	return ret;
}