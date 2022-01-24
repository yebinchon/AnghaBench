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
struct rdtgroup {int mode; } ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  enum rdtgrp_mode { ____Placeholder_rdtgrp_mode } rdtgrp_mode ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOENT ; 
 int RDT_MODE_EXCLUSIVE ; 
 int RDT_MODE_PSEUDO_LOCKED ; 
 int RDT_MODE_PSEUDO_LOCKSETUP ; 
 int RDT_MODE_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rdtgroup* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rdtgroup*) ; 
 int FUNC5 (struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC8(struct kernfs_open_file *of,
				   char *buf, size_t nbytes, loff_t off)
{
	struct rdtgroup *rdtgrp;
	enum rdtgrp_mode mode;
	int ret = 0;

	/* Valid input requires a trailing newline */
	if (nbytes == 0 || buf[nbytes - 1] != '\n')
		return -EINVAL;
	buf[nbytes - 1] = '\0';

	rdtgrp = FUNC2(of->kn);
	if (!rdtgrp) {
		FUNC3(of->kn);
		return -ENOENT;
	}

	FUNC0();

	mode = rdtgrp->mode;

	if ((!FUNC7(buf, "shareable") && mode == RDT_MODE_SHAREABLE) ||
	    (!FUNC7(buf, "exclusive") && mode == RDT_MODE_EXCLUSIVE) ||
	    (!FUNC7(buf, "pseudo-locksetup") &&
	     mode == RDT_MODE_PSEUDO_LOCKSETUP) ||
	    (!FUNC7(buf, "pseudo-locked") && mode == RDT_MODE_PSEUDO_LOCKED))
		goto out;

	if (mode == RDT_MODE_PSEUDO_LOCKED) {
		FUNC1("Cannot change pseudo-locked group\n");
		ret = -EINVAL;
		goto out;
	}

	if (!FUNC7(buf, "shareable")) {
		if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
			ret = FUNC5(rdtgrp);
			if (ret)
				goto out;
		}
		rdtgrp->mode = RDT_MODE_SHAREABLE;
	} else if (!FUNC7(buf, "exclusive")) {
		if (!FUNC6(rdtgrp)) {
			ret = -EINVAL;
			goto out;
		}
		if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
			ret = FUNC5(rdtgrp);
			if (ret)
				goto out;
		}
		rdtgrp->mode = RDT_MODE_EXCLUSIVE;
	} else if (!FUNC7(buf, "pseudo-locksetup")) {
		ret = FUNC4(rdtgrp);
		if (ret)
			goto out;
		rdtgrp->mode = RDT_MODE_PSEUDO_LOCKSETUP;
	} else {
		FUNC1("Unknown or unsupported mode\n");
		ret = -EINVAL;
	}

out:
	FUNC3(of->kn);
	return ret ?: nbytes;
}