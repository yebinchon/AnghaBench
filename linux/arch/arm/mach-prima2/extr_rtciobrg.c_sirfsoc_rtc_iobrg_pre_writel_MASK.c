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
 scalar_t__ SIRFSOC_CPUIOBRG_ADDR ; 
 scalar_t__ SIRFSOC_CPUIOBRG_DATA ; 
 scalar_t__ SIRFSOC_CPUIOBRG_WRBE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ sirfsoc_rtciobrg_base ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(u32 val, u32 addr)
{
	FUNC0();

	FUNC1(0xf1, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_WRBE);
	FUNC1(addr, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_ADDR);

	FUNC1(val, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_DATA);
}