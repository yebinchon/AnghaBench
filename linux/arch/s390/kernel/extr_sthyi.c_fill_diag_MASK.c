#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int infpwbcp; int infpwbif; int /*<<< orphan*/  infpval1; void* infpabif; void* infpabcp; int /*<<< orphan*/  infpdifl; int /*<<< orphan*/  infpsifl; int /*<<< orphan*/  infpdcps; int /*<<< orphan*/  infpscps; int /*<<< orphan*/  infplgnm; void* infplgif; void* infplgcp; int /*<<< orphan*/  infpflg1; } ;
struct TYPE_10__ {int infmscps; int infmsifl; } ;
struct TYPE_8__ {int /*<<< orphan*/  infhflg1; } ;
struct sthyi_sctns {TYPE_6__ par; TYPE_4__ mac; TYPE_2__ hdr; } ;
struct TYPE_11__ {int lpar_weight; int all_weight; int /*<<< orphan*/  lpar_cap; int /*<<< orphan*/  cpu_num_ded; int /*<<< orphan*/  cpu_num_shd; int /*<<< orphan*/  lpar_grp_cap; } ;
struct TYPE_9__ {int lpar_weight; int all_weight; int /*<<< orphan*/  lpar_cap; int /*<<< orphan*/  cpu_num_ded; int /*<<< orphan*/  cpu_num_shd; int /*<<< orphan*/  lpar_grp_cap; } ;
struct lpar_cpu_inf {TYPE_5__ ifl; TYPE_3__ cp; } ;
struct diag204_x_phys_block {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  hardware_group_name; scalar_t__ mtid; } ;
struct diag204_x_part_block {TYPE_1__ hdr; } ;
struct diag204_x_info_blk_hdr {int npar; int this_part; int flags; } ;

/* Variables and functions */
 scalar_t__ DIAG204_INFO_EXT ; 
 int DIAG204_LPAR_PHYS_FLG ; 
 scalar_t__ DIAG204_SUBC_RSI ; 
 scalar_t__ DIAG204_SUBC_STIB7 ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  HDR_PERF_UNAV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PAR_ABS_VLD ; 
 int /*<<< orphan*/  PAR_GRP_VLD ; 
 int /*<<< orphan*/  PAR_MT_EN ; 
 int /*<<< orphan*/  PAR_PCNT_VLD ; 
 int /*<<< orphan*/  PAR_WGHT_VLD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int,void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sthyi_sctns*,struct diag204_x_phys_block*,void*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct diag204_x_part_block* FUNC6 (struct lpar_cpu_inf*,int,void*,struct diag204_x_part_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct sthyi_sctns *sctns)
{
	int i, r, pages;
	bool this_lpar;
	void *diag204_buf;
	void *diag224_buf = NULL;
	struct diag204_x_info_blk_hdr *ti_hdr;
	struct diag204_x_part_block *part_block;
	struct diag204_x_phys_block *phys_block;
	struct lpar_cpu_inf lpar_inf = {};

	/* Errors are handled through the validity bits in the response. */
	pages = FUNC2((unsigned long)DIAG204_SUBC_RSI |
			(unsigned long)DIAG204_INFO_EXT, 0, NULL);
	if (pages <= 0)
		return;

	diag204_buf = FUNC10(FUNC1(pages, PAGE_SIZE));
	if (!diag204_buf)
		return;

	r = FUNC2((unsigned long)DIAG204_SUBC_STIB7 |
		    (unsigned long)DIAG204_INFO_EXT, pages, diag204_buf);
	if (r < 0)
		goto out;

	diag224_buf = (void *)FUNC0(GFP_KERNEL | GFP_DMA);
	if (!diag224_buf || FUNC3(diag224_buf))
		goto out;

	ti_hdr = diag204_buf;
	part_block = diag204_buf + sizeof(*ti_hdr);

	for (i = 0; i < ti_hdr->npar; i++) {
		/*
		 * For the calling lpar we also need to get the cpu
		 * caps and weights. The time information block header
		 * specifies the offset to the partition block of the
		 * caller lpar, so we know when we process its data.
		 */
		this_lpar = (void *)part_block - diag204_buf == ti_hdr->this_part;
		part_block = FUNC6(&lpar_inf, this_lpar, diag224_buf,
					  part_block);
	}

	phys_block = (struct diag204_x_phys_block *)part_block;
	part_block = diag204_buf + ti_hdr->this_part;
	if (part_block->hdr.mtid)
		sctns->par.infpflg1 = PAR_MT_EN;

	sctns->par.infpval1 |= PAR_GRP_VLD;
	sctns->par.infplgcp = FUNC8(lpar_inf.cp.lpar_grp_cap);
	sctns->par.infplgif = FUNC8(lpar_inf.ifl.lpar_grp_cap);
	FUNC7(sctns->par.infplgnm, part_block->hdr.hardware_group_name,
	       sizeof(sctns->par.infplgnm));

	sctns->par.infpscps = lpar_inf.cp.cpu_num_shd;
	sctns->par.infpdcps = lpar_inf.cp.cpu_num_ded;
	sctns->par.infpsifl = lpar_inf.ifl.cpu_num_shd;
	sctns->par.infpdifl = lpar_inf.ifl.cpu_num_ded;
	sctns->par.infpval1 |= PAR_PCNT_VLD;

	sctns->par.infpabcp = FUNC8(lpar_inf.cp.lpar_cap);
	sctns->par.infpabif = FUNC8(lpar_inf.ifl.lpar_cap);
	sctns->par.infpval1 |= PAR_ABS_VLD;

	/*
	 * Everything below needs global performance data to be
	 * meaningful.
	 */
	if (!(ti_hdr->flags & DIAG204_LPAR_PHYS_FLG)) {
		sctns->hdr.infhflg1 |= HDR_PERF_UNAV;
		goto out;
	}

	FUNC4(sctns, phys_block, diag224_buf);

	if (lpar_inf.cp.lpar_weight) {
		sctns->par.infpwbcp = sctns->mac.infmscps * 0x10000 *
			lpar_inf.cp.lpar_weight / lpar_inf.cp.all_weight;
	}

	if (lpar_inf.ifl.lpar_weight) {
		sctns->par.infpwbif = sctns->mac.infmsifl * 0x10000 *
			lpar_inf.ifl.lpar_weight / lpar_inf.ifl.all_weight;
	}
	sctns->par.infpval1 |= PAR_WGHT_VLD;

out:
	FUNC5((unsigned long)diag224_buf);
	FUNC9(diag204_buf);
}