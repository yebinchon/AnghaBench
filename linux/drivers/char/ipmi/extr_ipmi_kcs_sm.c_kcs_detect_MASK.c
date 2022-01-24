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
struct si_sm_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct si_sm_data*) ; 

__attribute__((used)) static int FUNC1(struct si_sm_data *kcs)
{
	/*
	 * It's impossible for the KCS status register to be all 1's,
	 * (assuming a properly functioning, self-initialized BMC)
	 * but that's what you get from reading a bogus address, so we
	 * test that first.
	 */
	if (FUNC0(kcs) == 0xff)
		return 1;

	return 0;
}