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

/* Variables and functions */
 scalar_t__ GIC_DIST_CTRL ; 
 scalar_t__ gic_dist_base_addr ; 
 int FUNC0 (scalar_t__) ; 

bool FUNC1(void)
{
	return !(FUNC0(gic_dist_base_addr + GIC_DIST_CTRL) & 0x1);
}