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
struct kcs_bmc {int running; int /*<<< orphan*/  lock; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct kcs_bmc* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	struct kcs_bmc *kcs_bmc = FUNC2(filp);
	int ret = 0;

	FUNC0(&kcs_bmc->lock);
	if (!kcs_bmc->running)
		kcs_bmc->running = 1;
	else
		ret = -EBUSY;
	FUNC1(&kcs_bmc->lock);

	return ret;
}