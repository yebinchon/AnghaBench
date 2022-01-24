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
typedef  size_t u32 ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 scalar_t__* ibm405ex_fwdv_multi_bits ; 

u32 FUNC1(unsigned long cpr_fwdv)
{
	u32 index;

	for (index = 0; index < FUNC0(ibm405ex_fwdv_multi_bits); index++)
		if (cpr_fwdv == (u32)ibm405ex_fwdv_multi_bits[index])
			return index + 1;

	return 0;
}