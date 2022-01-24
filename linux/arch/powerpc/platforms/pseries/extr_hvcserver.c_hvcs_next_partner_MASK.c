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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  H_VTERM_PARTNER_INFO ; 
 int FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 

__attribute__((used)) static int FUNC3(uint32_t unit_address,
		unsigned long last_p_partition_ID,
		unsigned long last_p_unit_address, unsigned long *pi_buff)

{
	long retval;
	retval = FUNC1(H_VTERM_PARTNER_INFO, unit_address,
			last_p_partition_ID,
				last_p_unit_address, FUNC2(pi_buff));
	return FUNC0(retval);
}