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
 scalar_t__ SDCPWR_PWST0_REG ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ sdcpwr_mapbase ; 

__attribute__((used)) static int FUNC1(int cpu)
{
	u32 ret;

	ret = FUNC0(sdcpwr_mapbase + SDCPWR_PWST0_REG);
	ret = (ret >> (cpu * 4)) & 0x7;

	return ret;
}