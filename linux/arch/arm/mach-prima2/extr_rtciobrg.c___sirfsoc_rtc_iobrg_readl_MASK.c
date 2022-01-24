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
 scalar_t__ SIRFSOC_CPUIOBRG_CTRL ; 
 scalar_t__ SIRFSOC_CPUIOBRG_DATA ; 
 scalar_t__ SIRFSOC_CPUIOBRG_WRBE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ sirfsoc_rtciobrg_base ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

u32 FUNC3(u32 addr)
{
	FUNC1();

	FUNC2(0x00, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_WRBE);
	FUNC2(addr, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_ADDR);
	FUNC2(0x01, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_CTRL);

	FUNC1();

	return FUNC0(sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_DATA);
}