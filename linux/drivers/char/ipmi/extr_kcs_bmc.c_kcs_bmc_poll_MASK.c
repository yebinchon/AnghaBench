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
struct kcs_bmc {int /*<<< orphan*/  lock; scalar_t__ data_in_avail; int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kcs_bmc* FUNC3 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *filp, poll_table *wait)
{
	struct kcs_bmc *kcs_bmc = FUNC3(filp);
	__poll_t mask = 0;

	FUNC0(filp, &kcs_bmc->queue, wait);

	FUNC1(&kcs_bmc->lock);
	if (kcs_bmc->data_in_avail)
		mask |= EPOLLIN;
	FUNC2(&kcs_bmc->lock);

	return mask;
}