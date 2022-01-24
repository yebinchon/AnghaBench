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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ GPC_CNTR ; 
 int GPC_CNTR_L2_PGE_SHIFT ; 
 scalar_t__ gpc_base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(bool power_off)
{
	u32 val;

	val = FUNC0(gpc_base + GPC_CNTR);
	val &= ~(1 << GPC_CNTR_L2_PGE_SHIFT);
	if (power_off)
		val |= 1 << GPC_CNTR_L2_PGE_SHIFT;
	FUNC1(val, gpc_base + GPC_CNTR);
}