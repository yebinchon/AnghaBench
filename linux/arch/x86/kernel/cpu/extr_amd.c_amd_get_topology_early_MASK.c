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
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_TOPOEXT ; 
 scalar_t__ FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int smp_num_siblings ; 

__attribute__((used)) static void FUNC2(struct cpuinfo_x86 *c)
{
	if (FUNC0(c, X86_FEATURE_TOPOEXT))
		smp_num_siblings = ((FUNC1(0x8000001e) >> 8) & 0xff) + 1;
}