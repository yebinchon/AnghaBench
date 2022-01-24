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
struct kcs_bmc {int /*<<< orphan*/  lock; scalar_t__ running; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kcs_bmc* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct kcs_bmc *kcs_bmc = FUNC3(filp);

	FUNC1(&kcs_bmc->lock);
	kcs_bmc->running = 0;
	FUNC0(kcs_bmc);
	FUNC2(&kcs_bmc->lock);

	return 0;
}