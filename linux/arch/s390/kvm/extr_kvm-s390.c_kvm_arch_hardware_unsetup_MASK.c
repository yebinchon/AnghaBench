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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gmap_notifier ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_clock_notifier ; 
 int /*<<< orphan*/  s390_epoch_delta_notifier ; 
 int /*<<< orphan*/  vsie_gmap_notifier ; 

void FUNC2(void)
{
	FUNC1(&gmap_notifier);
	FUNC1(&vsie_gmap_notifier);
	FUNC0(&s390_epoch_delta_notifier,
					 &kvm_clock_notifier);
}