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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned long PERF_RECORD_MISC_GUEST_KERNEL ; 
 unsigned long PERF_RECORD_MISC_GUEST_USER ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 

__attribute__((used)) static unsigned long FUNC1(struct pt_regs *regs)
{
	return FUNC0(regs) ? PERF_RECORD_MISC_GUEST_USER
					: PERF_RECORD_MISC_GUEST_KERNEL;
}