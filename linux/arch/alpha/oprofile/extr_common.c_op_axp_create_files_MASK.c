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
struct dentry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  unit_mask; int /*<<< orphan*/  user; int /*<<< orphan*/  kernel; int /*<<< orphan*/  count; int /*<<< orphan*/  event; int /*<<< orphan*/  enabled; } ;
struct TYPE_5__ {int num_counters; scalar_t__ can_set_proc_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  enable_user; int /*<<< orphan*/  enable_kernel; int /*<<< orphan*/  enable_pal; } ;

/* Variables and functions */
 TYPE_3__* ctr ; 
 TYPE_2__* model ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 TYPE_1__ sys ; 

__attribute__((used)) static int
FUNC3(struct dentry *root)
{
	int i;

	for (i = 0; i < model->num_counters; ++i) {
		struct dentry *dir;
		char buf[4];

		FUNC2(buf, sizeof buf, "%d", i);
		dir = FUNC1(root, buf);

		FUNC0(dir, "enabled", &ctr[i].enabled);
                FUNC0(dir, "event", &ctr[i].event);
		FUNC0(dir, "count", &ctr[i].count);
		/* Dummies.  */
		FUNC0(dir, "kernel", &ctr[i].kernel);
		FUNC0(dir, "user", &ctr[i].user);
		FUNC0(dir, "unit_mask", &ctr[i].unit_mask);
	}

	if (model->can_set_proc_mode) {
		FUNC0(root, "enable_pal",
					&sys.enable_pal);
		FUNC0(root, "enable_kernel",
					&sys.enable_kernel);
		FUNC0(root, "enable_user",
					&sys.enable_user);
	}

	return 0;
}