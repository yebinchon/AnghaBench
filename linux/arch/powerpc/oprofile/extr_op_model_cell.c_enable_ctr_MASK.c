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
 size_t CBE_PM_CTR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,size_t) ; 

__attribute__((used)) static inline void FUNC1(u32 cpu, u32 ctr, u32 *pm07_cntrl)
{

	pm07_cntrl[ctr] |= CBE_PM_CTR_ENABLE;
	FUNC0(cpu, ctr, pm07_cntrl[ctr]);
}