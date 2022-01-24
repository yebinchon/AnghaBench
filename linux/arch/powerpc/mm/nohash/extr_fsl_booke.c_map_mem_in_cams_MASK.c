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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 unsigned long PAGE_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,int) ; 
 int /*<<< orphan*/  memstart_addr ; 

unsigned long FUNC1(unsigned long ram, int max_cam_idx, bool dryrun)
{
	unsigned long virt = PAGE_OFFSET;
	phys_addr_t phys = memstart_addr;

	return FUNC0(phys, virt, ram, max_cam_idx, dryrun);
}