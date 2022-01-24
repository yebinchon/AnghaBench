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
struct seq_file {int dummy; } ;
struct rdtgroup {int dummy; } ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;

/* Variables and functions */
 int ENOENT ; 
 struct rdtgroup* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdtgroup*,struct seq_file*) ; 

__attribute__((used)) static int FUNC3(struct kernfs_open_file *of,
			       struct seq_file *s, void *v)
{
	struct rdtgroup *rdtgrp;
	int ret = 0;

	rdtgrp = FUNC0(of->kn);
	if (rdtgrp)
		FUNC2(rdtgrp, s);
	else
		ret = -ENOENT;
	FUNC1(of->kn);

	return ret;
}