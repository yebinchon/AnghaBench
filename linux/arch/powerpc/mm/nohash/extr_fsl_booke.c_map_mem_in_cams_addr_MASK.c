#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long phys_addr_t ;
struct TYPE_3__ {int esel_next; int esel_max; int esel_first; } ;
struct TYPE_4__ {TYPE_1__ tcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL_X ; 
 int /*<<< orphan*/  SPRN_TLB1CFG ; 
 int TLBnCFG_N_ENTRY ; 
 unsigned long FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tlbcam_index ; 

__attribute__((used)) static unsigned long FUNC6(phys_addr_t phys, unsigned long virt,
					unsigned long ram, int max_cam_idx,
					bool dryrun)
{
	int i;
	unsigned long amount_mapped = 0;

	/* Calculate CAM values */
	for (i = 0; ram && i < max_cam_idx; i++) {
		unsigned long cam_sz;

		cam_sz = FUNC0(ram, virt, phys);
		if (!dryrun)
			FUNC5(i, virt, phys, cam_sz,
				  FUNC4(PAGE_KERNEL_X), 0);

		ram -= cam_sz;
		amount_mapped += cam_sz;
		virt += cam_sz;
		phys += cam_sz;
	}

	if (dryrun)
		return amount_mapped;

	FUNC2(0, i, max_cam_idx);
	tlbcam_index = i;

#ifdef CONFIG_PPC64
	get_paca()->tcd.esel_next = i;
	get_paca()->tcd.esel_max = mfspr(SPRN_TLB1CFG) & TLBnCFG_N_ENTRY;
	get_paca()->tcd.esel_first = i;
#endif

	return amount_mapped;
}