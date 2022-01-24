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
typedef  void* u32 ;
struct cpuinfo_x86 {int x86_cache_max_rmid; int x86_cache_occ_scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_CQM_LLC ; 
 int /*<<< orphan*/  X86_FEATURE_CQM_MBM_LOCAL ; 
 int /*<<< orphan*/  X86_FEATURE_CQM_MBM_TOTAL ; 
 int /*<<< orphan*/  X86_FEATURE_CQM_OCCUP_LLC ; 
 scalar_t__ FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,void**,void**,void**,void**) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct cpuinfo_x86 *c)
{
	if (!FUNC0(c, X86_FEATURE_CQM_LLC)) {
		c->x86_cache_max_rmid  = -1;
		c->x86_cache_occ_scale = -1;
		return;
	}

	/* will be overridden if occupancy monitoring exists */
	c->x86_cache_max_rmid = FUNC2(0xf);

	if (FUNC0(c, X86_FEATURE_CQM_OCCUP_LLC) ||
	    FUNC0(c, X86_FEATURE_CQM_MBM_TOTAL) ||
	    FUNC0(c, X86_FEATURE_CQM_MBM_LOCAL)) {
		u32 eax, ebx, ecx, edx;

		/* QoS sub-leaf, EAX=0Fh, ECX=1 */
		FUNC1(0xf, 1, &eax, &ebx, &ecx, &edx);

		c->x86_cache_max_rmid  = ecx;
		c->x86_cache_occ_scale = ebx;
	}
}