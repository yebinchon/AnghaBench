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
struct task_struct {int dummy; } ;
struct rdtgroup {int flags; int /*<<< orphan*/  closid; int /*<<< orphan*/  mode; TYPE_1__* kn; struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {int thread_done; unsigned int minor; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  lock_thread_wq; int /*<<< orphan*/  cpu; } ;
typedef  struct task_struct device ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct task_struct*) ; 
 int RDT_DELETED ; 
 int /*<<< orphan*/  RDT_MODE_PSEUDO_LOCKED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,struct rdtgroup*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debugfs_resctrl ; 
 struct task_struct* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rdtgroup*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC12 (int /*<<< orphan*/ ,struct rdtgroup*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pseudo_lock_class ; 
 int FUNC15 (struct pseudo_lock_region*) ; 
 int /*<<< orphan*/  FUNC16 (struct pseudo_lock_region*) ; 
 int /*<<< orphan*/  pseudo_lock_fn ; 
 int /*<<< orphan*/  pseudo_lock_major ; 
 int FUNC17 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 int FUNC19 (struct pseudo_lock_region*) ; 
 int /*<<< orphan*/  FUNC20 (struct pseudo_lock_region*) ; 
 int /*<<< orphan*/  pseudo_measure_fops ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (struct rdtgroup*,char*,int) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 int FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct task_struct*) ; 

int FUNC26(struct rdtgroup *rdtgrp)
{
	struct pseudo_lock_region *plr = rdtgrp->plr;
	struct task_struct *thread;
	unsigned int new_minor;
	struct device *dev;
	int ret;

	ret = FUNC19(plr);
	if (ret < 0)
		return ret;

	ret = FUNC15(plr);
	if (ret < 0) {
		ret = -EINVAL;
		goto out_region;
	}

	plr->thread_done = 0;

	thread = FUNC12(pseudo_lock_fn, rdtgrp,
					FUNC5(plr->cpu),
					"pseudo_lock/%u", plr->cpu);
	if (FUNC0(thread)) {
		ret = FUNC3(thread);
		FUNC21("Locking thread returned error %d\n", ret);
		goto out_cstates;
	}

	FUNC11(thread, plr->cpu);
	FUNC25(thread);

	ret = FUNC24(plr->lock_thread_wq,
				       plr->thread_done == 1);
	if (ret < 0) {
		/*
		 * If the thread does not get on the CPU for whatever
		 * reason and the process which sets up the region is
		 * interrupted then this will leave the thread in runnable
		 * state and once it gets on the CPU it will derefence
		 * the cleared, but not freed, plr struct resulting in an
		 * empty pseudo-locking loop.
		 */
		FUNC22("Locking thread interrupted\n");
		goto out_cstates;
	}

	ret = FUNC17(&new_minor);
	if (ret < 0) {
		FUNC22("Unable to obtain a new minor number\n");
		goto out_cstates;
	}

	/*
	 * Unlock access but do not release the reference. The
	 * pseudo-locked region will still be here on return.
	 *
	 * The mutex has to be released temporarily to avoid a potential
	 * deadlock with the mm->mmap_sem semaphore which is obtained in
	 * the device_create() and debugfs_create_dir() callpath below
	 * as well as before the mmap() callback is called.
	 */
	FUNC14(&rdtgroup_mutex);

	if (!FUNC1(debugfs_resctrl)) {
		plr->debugfs_dir = FUNC6(rdtgrp->kn->name,
						      debugfs_resctrl);
		if (!FUNC1(plr->debugfs_dir))
			FUNC7("pseudo_lock_measure", 0200,
					    plr->debugfs_dir, rdtgrp,
					    &pseudo_measure_fops);
	}

	dev = FUNC9(pseudo_lock_class, NULL,
			    FUNC2(pseudo_lock_major, new_minor),
			    rdtgrp, "%s", rdtgrp->kn->name);

	FUNC13(&rdtgroup_mutex);

	if (FUNC0(dev)) {
		ret = FUNC3(dev);
		FUNC21("Failed to create character device: %d\n",
				    ret);
		goto out_debugfs;
	}

	/* We released the mutex - check if group was removed while we did so */
	if (rdtgrp->flags & RDT_DELETED) {
		ret = -ENODEV;
		goto out_device;
	}

	plr->minor = new_minor;

	rdtgrp->mode = RDT_MODE_PSEUDO_LOCKED;
	FUNC4(rdtgrp->closid);
	FUNC23(rdtgrp, "cpus", 0444);
	FUNC23(rdtgrp, "cpus_list", 0444);

	ret = 0;
	goto out;

out_device:
	FUNC10(pseudo_lock_class, FUNC2(pseudo_lock_major, new_minor));
out_debugfs:
	FUNC8(plr->debugfs_dir);
	FUNC18(new_minor);
out_cstates:
	FUNC16(plr);
out_region:
	FUNC20(plr);
out:
	return ret;
}