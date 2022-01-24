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
struct cpuinfo_mips {unsigned int tlbsize; unsigned int tlbsizevtlb; int tlbsizeftlbsets; unsigned int tlbsizeftlbways; unsigned int kscratch_mask; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 unsigned int MIPS_CONF4_AE ; 
 unsigned int MIPS_CONF4_FTLBPAGESIZE ; 
 unsigned int MIPS_CONF4_FTLBPAGESIZE_SHIFT ; 
 unsigned int MIPS_CONF4_FTLBSETS ; 
 unsigned int MIPS_CONF4_FTLBSETS_SHIFT ; 
 unsigned int MIPS_CONF4_FTLBWAYS ; 
 unsigned int MIPS_CONF4_FTLBWAYS_SHIFT ; 
 unsigned int MIPS_CONF4_IE ; 
 unsigned int MIPS_CONF4_KSCREXIST ; 
 unsigned int MIPS_CONF4_KSCREXIST_SHIFT ; 
 unsigned int MIPS_CONF4_MMUEXTDEF ; 
#define  MIPS_CONF4_MMUEXTDEF_FTLBSIZEEXT 130 
#define  MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT 129 
#define  MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT 128 
 unsigned int MIPS_CONF4_MMUSIZEEXT ; 
 unsigned int MIPS_CONF4_VFTLBPAGESIZE ; 
 unsigned int MIPS_CONF4_VTLBSIZEEXT ; 
 unsigned int MIPS_CONF4_VTLBSIZEEXT_SHIFT ; 
 unsigned int MIPS_CONF_M ; 
 int /*<<< orphan*/  MIPS_CPU_TLBINV ; 
 unsigned long MIPS_ENTRYHI_ASID ; 
 unsigned long MIPS_ENTRYHI_ASIDX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (struct cpuinfo_mips*) ; 
 scalar_t__ cpu_has_ftlb ; 
 int /*<<< orphan*/  cpu_has_mips_r6 ; 
 scalar_t__ cpu_has_tlb ; 
 int mips_ftlb_disabled ; 
 int mips_has_ftlb_configured ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cpuinfo_mips*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_mips*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC9(struct cpuinfo_mips *c)
{
	unsigned int config4;
	unsigned int newcf4;
	unsigned int mmuextdef;
	unsigned int ftlb_page = MIPS_CONF4_FTLBPAGESIZE;
	unsigned long asid_mask;

	config4 = FUNC5();

	if (cpu_has_tlb) {
		if (((config4 & MIPS_CONF4_IE) >> 29) == 2)
			c->options |= MIPS_CPU_TLBINV;

		/*
		 * R6 has dropped the MMUExtDef field from config4.
		 * On R6 the fields always describe the FTLB, and only if it is
		 * present according to Config.MT.
		 */
		if (!cpu_has_mips_r6)
			mmuextdef = config4 & MIPS_CONF4_MMUEXTDEF;
		else if (cpu_has_ftlb)
			mmuextdef = MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT;
		else
			mmuextdef = 0;

		switch (mmuextdef) {
		case MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT:
			c->tlbsize += (config4 & MIPS_CONF4_MMUSIZEEXT) * 0x40;
			c->tlbsizevtlb = c->tlbsize;
			break;
		case MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT:
			c->tlbsizevtlb +=
				((config4 & MIPS_CONF4_VTLBSIZEEXT) >>
				  MIPS_CONF4_VTLBSIZEEXT_SHIFT) * 0x40;
			c->tlbsize = c->tlbsizevtlb;
			ftlb_page = MIPS_CONF4_VFTLBPAGESIZE;
			/* fall through */
		case MIPS_CONF4_MMUEXTDEF_FTLBSIZEEXT:
			if (mips_ftlb_disabled)
				break;
			newcf4 = (config4 & ~ftlb_page) |
				(FUNC3(mmuextdef) <<
				 MIPS_CONF4_FTLBPAGESIZE_SHIFT);
			FUNC8(newcf4);
			FUNC1();
			config4 = FUNC5();
			if (config4 != newcf4) {
				FUNC4("PAGE_SIZE 0x%lx is not supported by FTLB (config4=0x%x)\n",
				       PAGE_SIZE, config4);
				/* Switch FTLB off */
				FUNC7(c, 0);
				mips_ftlb_disabled = 1;
				break;
			}
			c->tlbsizeftlbsets = 1 <<
				((config4 & MIPS_CONF4_FTLBSETS) >>
				 MIPS_CONF4_FTLBSETS_SHIFT);
			c->tlbsizeftlbways = ((config4 & MIPS_CONF4_FTLBWAYS) >>
					      MIPS_CONF4_FTLBWAYS_SHIFT) + 2;
			c->tlbsize += c->tlbsizeftlbways * c->tlbsizeftlbsets;
			mips_has_ftlb_configured = 1;
			break;
		}
	}

	c->kscratch_mask = (config4 & MIPS_CONF4_KSCREXIST)
				>> MIPS_CONF4_KSCREXIST_SHIFT;

	asid_mask = MIPS_ENTRYHI_ASID;
	if (config4 & MIPS_CONF4_AE)
		asid_mask |= MIPS_ENTRYHI_ASIDX;
	FUNC6(c, asid_mask);

	/*
	 * Warn if the computed ASID mask doesn't match the mask the kernel
	 * is built for. This may indicate either a serious problem or an
	 * easy optimisation opportunity, but either way should be addressed.
	 */
	FUNC0(asid_mask != FUNC2(c));

	return config4 & MIPS_CONF_M;
}