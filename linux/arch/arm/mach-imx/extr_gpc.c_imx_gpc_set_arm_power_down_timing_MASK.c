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
 scalar_t__ GPC_PGC_CPU_PDNSCR ; 
 int GPC_PGC_SW2ISO_SHIFT ; 
 int GPC_PGC_SW_SHIFT ; 
 scalar_t__ gpc_base ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

void FUNC1(u32 sw2iso, u32 sw)
{
	FUNC0((sw2iso << GPC_PGC_SW2ISO_SHIFT) |
		(sw << GPC_PGC_SW_SHIFT), gpc_base + GPC_PGC_CPU_PDNSCR);
}