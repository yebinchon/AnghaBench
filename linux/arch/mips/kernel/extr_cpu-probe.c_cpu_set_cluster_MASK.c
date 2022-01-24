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
struct cpuinfo_mips {unsigned int globalnumber; } ;

/* Variables and functions */
 unsigned int MIPS_GLOBALNUMBER_CLUSTER ; 
 unsigned int MIPS_GLOBALNUMBER_CLUSTER_SHF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(struct cpuinfo_mips *cpuinfo, unsigned int cluster)
{
	/* Ensure the core number fits in the field */
	FUNC0(cluster > (MIPS_GLOBALNUMBER_CLUSTER >>
			   MIPS_GLOBALNUMBER_CLUSTER_SHF));

	cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_CLUSTER;
	cpuinfo->globalnumber |= cluster << MIPS_GLOBALNUMBER_CLUSTER_SHF;
}