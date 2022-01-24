#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  regs ;
struct TYPE_2__ {int bi_procfreq; int bi_plb_busfreq; int bi_opbfreq; int bi_pci_busfreq; scalar_t__* bi_enetaddr; scalar_t__* bi_enet1addr; int bi_flashsize; int /*<<< orphan*/  bi_memsize; int /*<<< orphan*/  bi_memstart; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCRN_CPC0_UCR ; 
 int NUM_REGS ; 
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char*,int*,int) ; 

__attribute__((used)) static void FUNC12(void)
{
	u32 uart = FUNC9(DCRN_CPC0_UCR) & 0x7f;

	FUNC4(bd.bi_memstart, bd.bi_memsize); 

	FUNC2(bd.bi_procfreq, bd.bi_procfreq, 0);
	FUNC1("/plb", bd.bi_plb_busfreq);
	FUNC1("/plb/opb", bd.bi_opbfreq);
	FUNC1("/plb/ebc", bd.bi_pci_busfreq);
	FUNC1("/plb/opb/serial@ef600300", bd.bi_procfreq / uart); 
	FUNC1("/plb/opb/serial@ef600400", bd.bi_procfreq / uart); 
	
	FUNC3("ethernet0", bd.bi_enetaddr);
	FUNC3("ethernet1", bd.bi_enet1addr);

	/* Is this a single eth/serial board? */
	if ((bd.bi_enet1addr[0] == 0) && 
	    (bd.bi_enet1addr[1] == 0) &&
	    (bd.bi_enet1addr[2] == 0) &&
	    (bd.bi_enet1addr[3] == 0) &&
	    (bd.bi_enet1addr[4] == 0) &&
	    (bd.bi_enet1addr[5] == 0)) {
		void *devp;

		FUNC10("Trimming devtree for single serial/eth board\n");

		devp = FUNC6("/plb/opb/serial@ef600300");
		if (!devp)
			FUNC5("Can't find node for /plb/opb/serial@ef600300");
		FUNC0(devp);

		devp = FUNC6("/plb/opb/ethernet@ef600900");
		if (!devp)
			FUNC5("Can't find node for /plb/opb/ethernet@ef600900");
		FUNC0(devp);
	}

	FUNC8((u32 *)0xef600800, (u32 *)0xef600900);

	/* Fix up flash size in fdt for 4M boards. */
	if (bd.bi_flashsize < 0x800000) {
		u32 regs[NUM_REGS];
		void *devp = FUNC6("/plb/ebc/nor_flash@0");
		if (!devp)
			FUNC5("Can't find FDT node for nor_flash!??");

		FUNC10("Fixing devtree for 4M Flash\n");
		
		/* First fix up the base addresse */
		FUNC7(devp, "reg", regs, sizeof(regs));
		regs[0] = 0;
		regs[1] = 0xffc00000;
		regs[2] = 0x00400000;
		FUNC11(devp, "reg", regs, sizeof(regs));
		
		/* Then the offsets */
		devp = FUNC6("/plb/ebc/nor_flash@0/partition@0");
		if (!devp)
			FUNC5("Can't find FDT node for partition@0");
		FUNC7(devp, "reg", regs, 2*sizeof(u32));
		regs[0] -= 0x400000;
		FUNC11(devp, "reg", regs,  2*sizeof(u32));

		devp = FUNC6("/plb/ebc/nor_flash@0/partition@1");
		if (!devp)
			FUNC5("Can't find FDT node for partition@1");
		FUNC7(devp, "reg", regs, 2*sizeof(u32));
		regs[0] -= 0x400000;
		FUNC11(devp, "reg", regs,  2*sizeof(u32));

		devp = FUNC6("/plb/ebc/nor_flash@0/partition@2");
		if (!devp)
			FUNC5("Can't find FDT node for partition@2");
		FUNC7(devp, "reg", regs, 2*sizeof(u32));
		regs[0] -= 0x400000;
		FUNC11(devp, "reg", regs,  2*sizeof(u32));

		devp = FUNC6("/plb/ebc/nor_flash@0/partition@3");
		if (!devp)
			FUNC5("Can't find FDT node for partition@3");
		FUNC7(devp, "reg", regs, 2*sizeof(u32));
		regs[0] -= 0x400000;
		FUNC11(devp, "reg", regs,  2*sizeof(u32));

		devp = FUNC6("/plb/ebc/nor_flash@0/partition@4");
		if (!devp)
			FUNC5("Can't find FDT node for partition@4");
		FUNC7(devp, "reg", regs, 2*sizeof(u32));
		regs[0] -= 0x400000;
		FUNC11(devp, "reg", regs,  2*sizeof(u32));

		devp = FUNC6("/plb/ebc/nor_flash@0/partition@6");
		if (!devp)
			FUNC5("Can't find FDT node for partition@6");
		FUNC7(devp, "reg", regs, 2*sizeof(u32));
		regs[0] -= 0x400000;
		FUNC11(devp, "reg", regs,  2*sizeof(u32));

		/* Delete the FeatFS node */
		devp = FUNC6("/plb/ebc/nor_flash@0/partition@5");
		if (!devp)
			FUNC5("Can't find FDT node for partition@5");
		FUNC0(devp);
	}
}