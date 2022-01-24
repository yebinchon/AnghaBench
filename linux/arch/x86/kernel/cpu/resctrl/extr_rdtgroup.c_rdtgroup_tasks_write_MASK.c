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
struct rdtgroup {scalar_t__ mode; } ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOENT ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct rdtgroup* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,struct rdtgroup*,struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct kernfs_open_file *of,
				    char *buf, size_t nbytes, loff_t off)
{
	struct rdtgroup *rdtgrp;
	int ret = 0;
	pid_t pid;

	if (FUNC0(FUNC6(buf), 0, &pid) || pid < 0)
		return -EINVAL;
	rdtgrp = FUNC3(of->kn);
	if (!rdtgrp) {
		FUNC4(of->kn);
		return -ENOENT;
	}
	FUNC1();

	if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED ||
	    rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
		ret = -EINVAL;
		FUNC2("Pseudo-locking in progress\n");
		goto unlock;
	}

	ret = FUNC5(pid, rdtgrp, of);

unlock:
	FUNC4(of->kn);

	return ret ?: nbytes;
}