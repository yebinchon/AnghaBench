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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  sccr2; int /*<<< orphan*/  sccr1; int /*<<< orphan*/  scfr1; int /*<<< orphan*/  scfr2; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLK_DIVIDER_ONE_BASED ; 
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t MPC512x_CLK_AC97 ; 
 size_t MPC512x_CLK_AXE ; 
 size_t MPC512x_CLK_BDLC ; 
 size_t MPC512x_CLK_CAN_CLK_IN ; 
 size_t MPC512x_CLK_CSB ; 
 size_t MPC512x_CLK_DDR ; 
 size_t MPC512x_CLK_DDR_UG ; 
 size_t MPC512x_CLK_DIU ; 
 size_t MPC512x_CLK_DIU_UG ; 
 size_t MPC512x_CLK_DIU_x4 ; 
 size_t MPC512x_CLK_DUMMY ; 
 size_t MPC512x_CLK_E300 ; 
 size_t MPC512x_CLK_FEC ; 
 size_t MPC512x_CLK_FEC2 ; 
 size_t MPC512x_CLK_I2C ; 
 size_t MPC512x_CLK_IIM ; 
 size_t MPC512x_CLK_IPS ; 
 size_t MPC512x_CLK_LPC ; 
 size_t MPC512x_CLK_LPC_UG ; 
 size_t MPC512x_CLK_MBX ; 
 size_t MPC512x_CLK_MBX_3D ; 
 size_t MPC512x_CLK_MBX_3D_UG ; 
 size_t MPC512x_CLK_MBX_BUS ; 
 size_t MPC512x_CLK_MBX_BUS_UG ; 
 size_t MPC512x_CLK_MBX_UG ; 
 size_t MPC512x_CLK_MEM ; 
 size_t MPC512x_CLK_NFC ; 
 size_t MPC512x_CLK_NFC_UG ; 
 size_t MPC512x_CLK_PATA ; 
 size_t MPC512x_CLK_PCI ; 
 size_t MPC512x_CLK_PCI_UG ; 
 size_t MPC512x_CLK_PSC0 ; 
 size_t MPC512x_CLK_PSC_FIFO ; 
 size_t MPC512x_CLK_PSC_MCLK_IN ; 
 size_t MPC512x_CLK_SATA ; 
 size_t MPC512x_CLK_SDHC ; 
 size_t MPC512x_CLK_SDHC2 ; 
 size_t MPC512x_CLK_SDHC2_UG ; 
 size_t MPC512x_CLK_SDHC_UG ; 
 size_t MPC512x_CLK_SDHC_x4 ; 
 size_t MPC512x_CLK_SPDIF ; 
 size_t MPC512x_CLK_SPDIF_TX_IN ; 
 size_t MPC512x_CLK_SYS ; 
 size_t MPC512x_CLK_USB1 ; 
 size_t MPC512x_CLK_USB2 ; 
 size_t MPC512x_CLK_VIU ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* clkregs ; 
 int /*<<< orphan*/ * clks ; 
 int /*<<< orphan*/  divtab_1234 ; 
 int /*<<< orphan*/  divtab_2346 ; 
 int FUNC3 () ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * mclk_mscan_data ; 
 int /*<<< orphan*/ * mclk_outclk_data ; 
 int /*<<< orphan*/ * mclk_psc_data ; 
 int /*<<< orphan*/ * mclk_spdif_data ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,size_t) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 scalar_t__ FUNC23 () ; 
 scalar_t__ FUNC24 () ; 
 size_t FUNC25 () ; 

__attribute__((used)) static void FUNC26(struct device_node *np, int busfreq)
{
	int sys_mul, sys_div, ips_div;
	int mul, div;
	size_t mclk_idx;
	int freq;

	/*
	 * developer's notes:
	 * - consider whether to handle clocks which have both gates and
	 *   dividers via intermediates or by means of composites
	 * - fractional dividers appear to not map well to composites
	 *   since they can be seen as a fixed multiplier and an
	 *   adjustable divider, while composites can only combine at
	 *   most one of a mux, div, and gate each into one 'struct clk'
	 *   item
	 * - PSC/MSCAN/SPDIF clock generation OTOH already is very
	 *   specific and cannot get mapped to composites (at least not
	 *   a single one, maybe two of them, but then some of these
	 *   intermediate clock signals get referenced elsewhere (e.g.
	 *   in the clock frequency measurement, CFM) and thus need
	 *   publicly available names
	 * - the current source layout appropriately reflects the
	 *   hardware setup, and it works, so it's questionable whether
	 *   further changes will result in big enough a benefit
	 */

	/* regardless of whether XTAL/OSC exists, have REF created */
	FUNC11(np, busfreq, &sys_mul, &sys_div, &ips_div);

	/* now setup the REF -> SYS -> CSB -> IPS hierarchy */
	clks[MPC512x_CLK_SYS] = FUNC7("sys", "ref",
						   sys_mul, sys_div);
	clks[MPC512x_CLK_CSB] = FUNC7("csb", "sys", 1, 2);
	clks[MPC512x_CLK_IPS] = FUNC6("ips", "csb",
						     &clkregs->scfr1, 23, 3,
						     divtab_2346);
	/* now setup anything below SYS and CSB and IPS */

	clks[MPC512x_CLK_DDR_UG] = FUNC7("ddr-ug", "sys", 1, 2);

	/*
	 * the Reference Manual discusses that for SDHC only even divide
	 * ratios are supported because clock domain synchronization
	 * between 'per' and 'ipg' is broken;
	 * keep the divider's bit 0 cleared (per reset value), and only
	 * allow to setup the divider's bits 7:1, which results in that
	 * only even divide ratios can get configured upon rate changes;
	 * keep the "x4" name because this bit shift hack is an internal
	 * implementation detail, the "fractional divider with quarters"
	 * semantics remains
	 */
	clks[MPC512x_CLK_SDHC_x4] = FUNC7("sdhc-x4", "csb", 2, 1);
	clks[MPC512x_CLK_SDHC_UG] = FUNC5("sdhc-ug", "sdhc-x4", 0,
							&clkregs->scfr2, 1, 7,
							CLK_DIVIDER_ONE_BASED);
	if (FUNC22()) {
		clks[MPC512x_CLK_SDHC2_UG] = FUNC5(
				"sdhc2-ug", "sdhc-x4", 0, &clkregs->scfr2,
				9, 7, CLK_DIVIDER_ONE_BASED);
	}

	clks[MPC512x_CLK_DIU_x4] = FUNC7("diu-x4", "csb", 4, 1);
	clks[MPC512x_CLK_DIU_UG] = FUNC5("diu-ug", "diu-x4", 0,
						       &clkregs->scfr1, 0, 8,
						       CLK_DIVIDER_ONE_BASED);

	/*
	 * the "power architecture PLL" was setup from data which was
	 * sampled from the reset config word, at this point in time the
	 * configuration can be considered fixed and read only (i.e. no
	 * longer adjustable, or no longer in need of adjustment), which
	 * is why we don't register a PLL here but assume fixed factors
	 */
	mul = FUNC3();
	div = 2;	/* compensate for the fractional factor */
	clks[MPC512x_CLK_E300] = FUNC7("e300", "csb", mul, div);

	if (FUNC15()) {
		clks[MPC512x_CLK_MBX_BUS_UG] = FUNC7(
				"mbx-bus-ug", "csb", 1, 2);
		clks[MPC512x_CLK_MBX_UG] = FUNC6(
				"mbx-ug", "mbx-bus-ug", &clkregs->scfr1,
				14, 3, divtab_1234);
		clks[MPC512x_CLK_MBX_3D_UG] = FUNC7(
				"mbx-3d-ug", "mbx-ug", 1, 1);
	}
	if (FUNC20()) {
		clks[MPC512x_CLK_PCI_UG] = FUNC6(
				"pci-ug", "csb", &clkregs->scfr1,
				20, 3, divtab_2346);
	}
	if (FUNC17()) {
		/*
		 * XXX TODO implement 5125 NFC clock setup logic,
		 * with high/low period counters in clkregs->scfr3,
		 * currently there are no users so it's ENOIMPL
		 */
		clks[MPC512x_CLK_NFC_UG] = FUNC1(-ENOTSUPP);
	} else {
		clks[MPC512x_CLK_NFC_UG] = FUNC6(
				"nfc-ug", "ips", &clkregs->scfr1,
				8, 3, divtab_1234);
	}
	clks[MPC512x_CLK_LPC_UG] = FUNC6("lpc-ug", "ips",
							&clkregs->scfr1, 11, 3,
							divtab_1234);

	clks[MPC512x_CLK_LPC] = FUNC9("lpc", "lpc-ug",
						  &clkregs->sccr1, 30);
	clks[MPC512x_CLK_NFC] = FUNC9("nfc", "nfc-ug",
						  &clkregs->sccr1, 29);
	if (FUNC19()) {
		clks[MPC512x_CLK_PATA] = FUNC9(
				"pata", "ips", &clkregs->sccr1, 28);
	}
	/* for PSCs there is a "registers" gate and a bitrate MCLK subtree */
	for (mclk_idx = 0; mclk_idx < FUNC25(); mclk_idx++) {
		char name[12];
		FUNC12(name, sizeof(name), "psc%d", mclk_idx);
		clks[MPC512x_CLK_PSC0 + mclk_idx] = FUNC9(
				name, "ips", &clkregs->sccr1, 27 - mclk_idx);
		FUNC10(&mclk_psc_data[mclk_idx], mclk_idx);
	}
	clks[MPC512x_CLK_PSC_FIFO] = FUNC9("psc-fifo", "ips",
						       &clkregs->sccr1, 15);
	if (FUNC21()) {
		clks[MPC512x_CLK_SATA] = FUNC9(
				"sata", "ips", &clkregs->sccr1, 14);
	}
	clks[MPC512x_CLK_FEC] = FUNC9("fec", "ips",
						  &clkregs->sccr1, 13);
	if (FUNC20()) {
		clks[MPC512x_CLK_PCI] = FUNC9(
				"pci", "pci-ug", &clkregs->sccr1, 11);
	}
	clks[MPC512x_CLK_DDR] = FUNC9("ddr", "ddr-ug",
						  &clkregs->sccr1, 10);
	if (FUNC14()) {
		clks[MPC512x_CLK_FEC2] = FUNC9(
				"fec2", "ips", &clkregs->sccr1, 9);
	}

	clks[MPC512x_CLK_DIU] = FUNC9("diu", "diu-ug",
						  &clkregs->sccr2, 31);
	if (FUNC13()) {
		clks[MPC512x_CLK_AXE] = FUNC9(
				"axe", "csb", &clkregs->sccr2, 30);
	}
	clks[MPC512x_CLK_MEM] = FUNC9("mem", "ips",
						  &clkregs->sccr2, 29);
	clks[MPC512x_CLK_USB1] = FUNC9("usb1", "csb",
						   &clkregs->sccr2, 28);
	clks[MPC512x_CLK_USB2] = FUNC9("usb2", "csb",
						   &clkregs->sccr2, 27);
	clks[MPC512x_CLK_I2C] = FUNC9("i2c", "ips",
						  &clkregs->sccr2, 26);
	/* MSCAN differs from PSC with just one gate for multiple components */
	clks[MPC512x_CLK_BDLC] = FUNC9("bdlc", "ips",
						   &clkregs->sccr2, 25);
	for (mclk_idx = 0; mclk_idx < FUNC0(mclk_mscan_data); mclk_idx++)
		FUNC10(&mclk_mscan_data[mclk_idx], mclk_idx);
	clks[MPC512x_CLK_SDHC] = FUNC9("sdhc", "sdhc-ug",
						   &clkregs->sccr2, 24);
	/* there is only one SPDIF component, which shares MCLK support code */
	if (FUNC23()) {
		clks[MPC512x_CLK_SPDIF] = FUNC9(
				"spdif", "ips", &clkregs->sccr2, 23);
		FUNC10(&mclk_spdif_data[0], 0);
	}
	if (FUNC15()) {
		clks[MPC512x_CLK_MBX_BUS] = FUNC9(
				"mbx-bus", "mbx-bus-ug", &clkregs->sccr2, 22);
		clks[MPC512x_CLK_MBX] = FUNC9(
				"mbx", "mbx-ug", &clkregs->sccr2, 21);
		clks[MPC512x_CLK_MBX_3D] = FUNC9(
				"mbx-3d", "mbx-3d-ug", &clkregs->sccr2, 20);
	}
	clks[MPC512x_CLK_IIM] = FUNC9("iim", "csb",
						  &clkregs->sccr2, 19);
	if (FUNC24()) {
		clks[MPC512x_CLK_VIU] = FUNC9(
				"viu", "csb", &clkregs->sccr2, 18);
	}
	if (FUNC22()) {
		clks[MPC512x_CLK_SDHC2] = FUNC9(
				"sdhc-2", "sdhc2-ug", &clkregs->sccr2, 17);
	}

	if (FUNC18()) {
		size_t idx;	/* used as mclk_idx, just to trim line length */
		for (idx = 0; idx < FUNC0(mclk_outclk_data); idx++)
			FUNC10(&mclk_outclk_data[idx], idx);
	}

	/*
	 * externally provided clocks (when implemented in hardware,
	 * device tree may specify values which otherwise were unknown)
	 */
	freq = FUNC4("psc_mclk_in");
	if (!freq)
		freq = 25000000;
	clks[MPC512x_CLK_PSC_MCLK_IN] = FUNC8("psc_mclk_in", freq);
	if (FUNC16()) {
		freq = FUNC4("can_clk_in");
		clks[MPC512x_CLK_CAN_CLK_IN] = FUNC8(
				"can_clk_in", freq);
	} else {
		freq = FUNC4("spdif_tx_in");
		clks[MPC512x_CLK_SPDIF_TX_IN] = FUNC8(
				"spdif_tx_in", freq);
		freq = FUNC4("spdif_rx_in");
		clks[MPC512x_CLK_SPDIF_TX_IN] = FUNC8(
				"spdif_rx_in", freq);
	}

	/* fixed frequency for AC97, always 24.567MHz */
	clks[MPC512x_CLK_AC97] = FUNC8("ac97", 24567000);

	/*
	 * pre-enable those "internal" clock items which never get
	 * claimed by any peripheral driver, to not have the clock
	 * subsystem disable them late at startup
	 */
	FUNC2(clks[MPC512x_CLK_DUMMY]);
	FUNC2(clks[MPC512x_CLK_E300]);	/* PowerPC CPU */
	FUNC2(clks[MPC512x_CLK_DDR]);	/* DRAM */
	FUNC2(clks[MPC512x_CLK_MEM]);	/* SRAM */
	FUNC2(clks[MPC512x_CLK_IPS]);	/* SoC periph */
	FUNC2(clks[MPC512x_CLK_LPC]);	/* boot media */
}