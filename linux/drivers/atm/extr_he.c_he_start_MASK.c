#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct he_tpd {int dummy; } ;
struct he_hsp {int dummy; } ;
struct he_dev {int media; int vcibits; int vpibits; int cells_per_row; int bytes_per_row; int r0_numrows; int tx_numrows; int r1_numrows; int r0_startrow; int tx_startrow; int r1_startrow; int cells_per_lbuf; int buffer_limit; int r0_numbuffs; int r1_numbuffs; int tx_numbuffs; unsigned int hsp_phys; scalar_t__ tbrq_peak; scalar_t__ rbpl_peak; scalar_t__ rbrq_peak; scalar_t__ irq_peak; TYPE_4__* atm_dev; scalar_t__ total_bw; TYPE_2__* cs_stper; int /*<<< orphan*/ * hsp; struct pci_dev* pci_dev; int /*<<< orphan*/  outstanding_tpds; int /*<<< orphan*/ * tpd_pool; void** prod_id; int /*<<< orphan*/  membase; } ;
struct atm_dev {void** esi; } ;
struct TYPE_10__ {int vpi_bits; int vci_bits; } ;
struct TYPE_11__ {TYPE_3__ ci_range; TYPE_1__* phy; int /*<<< orphan*/  link_rate; } ;
struct TYPE_9__ {int pcr; scalar_t__ inuse; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* start ) (TYPE_4__*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int ATM_CELL_PAYLOAD ; 
 int /*<<< orphan*/  ATM_OC12_PCR ; 
 int /*<<< orphan*/  ATM_OC3_PCR ; 
 unsigned int BANK_ON ; 
 int BIG_ENDIAN_HOST ; 
 unsigned int BOARD_RST_STATUS ; 
 unsigned int FUNC1 (int) ; 
 scalar_t__ CEC ; 
 int CMDFF_ENB ; 
 int CONFIG_DEFAULT_VCIBITS ; 
 int CONFIG_DEFAULT_VPIBITS ; 
 unsigned int CONFIG_TMABR ; 
 unsigned int CONFIG_TPDBA ; 
 unsigned int CONFIG_TSRB ; 
 unsigned int CONFIG_TSRC ; 
 unsigned int CONFIG_TSRD ; 
 int /*<<< orphan*/  CS_ERCTL0 ; 
 int DATA_RD_SWAP ; 
 int DATA_WR_SWAP ; 
 scalar_t__ DCC ; 
 int DESC_RD_SWAP ; 
 int DESC_WR_SWAP ; 
 unsigned int FUNC2 (int) ; 
 int EINVAL ; 
 int ENBL_64 ; 
 int ENODEV ; 
 int ENOMEM ; 
 unsigned int ER_ENABLE ; 
 scalar_t__ G0_INMQ_L ; 
 scalar_t__ G0_INMQ_S ; 
 scalar_t__ G0_RBPL_BS ; 
 scalar_t__ G0_RBPL_QI ; 
 scalar_t__ G0_RBPL_S ; 
 scalar_t__ G0_RBPL_T ; 
 scalar_t__ G0_RBPS_BS ; 
 scalar_t__ G0_RBPS_QI ; 
 scalar_t__ G0_RBPS_S ; 
 scalar_t__ G0_RBPS_T ; 
 scalar_t__ G0_RBRQ_H ; 
 scalar_t__ G0_RBRQ_I ; 
 scalar_t__ G0_RBRQ_Q ; 
 scalar_t__ G0_RBRQ_ST ; 
 scalar_t__ G0_TBRQ_B_T ; 
 scalar_t__ G0_TBRQ_H ; 
 scalar_t__ G0_TBRQ_S ; 
 scalar_t__ G0_TBRQ_THRESH ; 
 scalar_t__ G1_INMQ_L ; 
 scalar_t__ G1_INMQ_S ; 
 scalar_t__ G2_INMQ_L ; 
 scalar_t__ G2_INMQ_S ; 
 scalar_t__ G3_INMQ_L ; 
 scalar_t__ G3_INMQ_S ; 
 scalar_t__ G4_INMQ_L ; 
 scalar_t__ G4_INMQ_S ; 
 scalar_t__ G5_INMQ_L ; 
 scalar_t__ G5_INMQ_S ; 
 scalar_t__ G6_INMQ_L ; 
 scalar_t__ G6_INMQ_S ; 
 scalar_t__ G7_INMQ_L ; 
 scalar_t__ G7_INMQ_S ; 
 int /*<<< orphan*/  GEN_CNTL_0 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct he_dev* FUNC3 (struct atm_dev*) ; 
 int HE_MAXCIDBITS ; 
 int HE_NUM_CS_STPER ; 
 int HE_NUM_GROUPS ; 
 int /*<<< orphan*/  HE_REGMAP_SIZE ; 
 scalar_t__ HOST_CNTL ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ HSP_BA ; 
 int IGNORE_TIMEOUT ; 
 int INIT_ENB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int INTR_SWAP ; 
 int INT_PROC_ENBL ; 
 int LAT_TIMER ; 
 scalar_t__ LBARB ; 
 unsigned int FUNC6 (int) ; 
 int LB_64_ENB ; 
 scalar_t__ LB_CONFIG ; 
 scalar_t__ LB_SWAP ; 
 scalar_t__ LITHRSH ; 
 scalar_t__ MAC_ADDR ; 
 scalar_t__ MCC ; 
 scalar_t__ MEDIA ; 
 int MRL_ENB ; 
 int MRM_ENB ; 
 unsigned int FUNC7 (int) ; 
 scalar_t__ OEC ; 
 int OUTFF_ENB ; 
 int PCI_BUS_SIZE64 ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INVALIDATE ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int PERR_INT_ENB ; 
 unsigned int PHY_INT_ENB ; 
 scalar_t__ PROD_ID ; 
 int PROD_ID_LEN ; 
 unsigned int FUNC8 (int) ; 
 int QUICK_RD_RETRY ; 
 int QUICK_WR_RETRY ; 
 unsigned int FUNC9 (int) ; 
 unsigned int FUNC10 (int) ; 
 unsigned int FUNC11 (int) ; 
 unsigned int FUNC12 (int) ; 
 scalar_t__ RCMABR_BA ; 
 scalar_t__ RCMCONFIG ; 
 scalar_t__ RCMLBM_BA ; 
 scalar_t__ RCMRSRB_BA ; 
 int RCM_MEM_SIZE ; 
 scalar_t__ RC_CONFIG ; 
 unsigned int FUNC13 (int) ; 
 unsigned int FUNC14 (int) ; 
 scalar_t__ RESET_CNTL ; 
 scalar_t__ RH_CONFIG ; 
 unsigned int FUNC15 (int) ; 
 scalar_t__ RLBC_H ; 
 scalar_t__ RLBC_H2 ; 
 scalar_t__ RLBC_T ; 
 unsigned int FUNC16 (int) ; 
 unsigned int FUNC17 (int) ; 
 unsigned int FUNC18 (int) ; 
 scalar_t__ RXTHRSH ; 
 unsigned int RX_ENABLE ; 
 unsigned int FUNC19 (int) ; 
 unsigned int FUNC20 (int) ; 
 scalar_t__ SDRAMCON ; 
 scalar_t__ SDRAM_CTL ; 
 unsigned int FUNC21 (int) ; 
 int /*<<< orphan*/  SUNI_TACP_IUCHP ; 
 int SUNI_TACP_IUCHP_CLP ; 
 int /*<<< orphan*/  SUNI_TPOP_APM ; 
 int SUNI_TPOP_APM_S ; 
 int SUNI_TPOP_APM_S_SHIFT ; 
 int SUNI_TPOP_S_SDH ; 
 int FUNC22 (int) ; 
 unsigned int FUNC23 (int) ; 
 scalar_t__ TCMCONFIG ; 
 int TCM_MEM_SIZE ; 
 unsigned int FUNC24 (int) ; 
 unsigned int FUNC25 (int) ; 
 scalar_t__ TMABR_BA ; 
 unsigned int FUNC26 (int) ; 
 unsigned int FUNC27 (int) ; 
 int /*<<< orphan*/  TPD_ALIGNMENT ; 
 scalar_t__ TPD_BA ; 
 scalar_t__ TSRB_BA ; 
 scalar_t__ TSRC_BA ; 
 scalar_t__ TSRD_BA ; 
 scalar_t__ TXAAL5_PROTO ; 
 scalar_t__ TX_CONFIG ; 
 unsigned int TX_ENABLE ; 
 unsigned int FUNC28 (int) ; 
 unsigned int FUNC29 (int) ; 
 scalar_t__ UBUFF_BA ; 
 unsigned int FUNC30 (int) ; 
 unsigned int WIDE_DATA ; 
 int XFER_SIZE ; 
 int disable64 ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *,int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC32 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct he_dev*) ; 
 scalar_t__ FUNC34 (struct he_dev*) ; 
 scalar_t__ FUNC35 (struct he_dev*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC36 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC37 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC38 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC39 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC40 (struct he_dev*) ; 
 scalar_t__ FUNC41 (struct he_dev*) ; 
 scalar_t__ FUNC42 (struct he_dev*) ; 
 int FUNC43 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC45 (struct he_dev*,scalar_t__) ; 
 unsigned int FUNC46 (struct he_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct he_dev*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC48 (struct he_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (struct he_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC50 (struct he_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC51 (char*,...) ; 
 int /*<<< orphan*/  FUNC52 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int) ; 
 int nvcibits ; 
 int nvpibits ; 
 scalar_t__ FUNC54 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC55 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC56 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC57 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC58 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC59 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC60 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 void* FUNC61 (struct he_dev*,scalar_t__) ; 
 scalar_t__ sdh ; 
 int /*<<< orphan*/  FUNC62 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC63 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC64(struct atm_dev *dev)
{
	struct he_dev *he_dev;
	struct pci_dev *pci_dev;
	unsigned long membase;

	u16 command;
	u32 gen_cntl_0, host_cntl, lb_swap;
	u8 cache_size, timer;
	
	unsigned err;
	unsigned int status, reg;
	int i, group;

	he_dev = FUNC3(dev);
	pci_dev = he_dev->pci_dev;

	membase = FUNC57(pci_dev, 0);
	FUNC4("membase = 0x%lx  irq = %d.\n", membase, pci_dev->irq);

	/*
	 * pci bus controller initialization 
	 */

	/* 4.3 pci bus controller-specific initialization */
	if (FUNC55(pci_dev, GEN_CNTL_0, &gen_cntl_0) != 0) {
		FUNC51("can't read GEN_CNTL_0\n");
		return -EINVAL;
	}
	gen_cntl_0 |= (MRL_ENB | MRM_ENB | IGNORE_TIMEOUT);
	if (FUNC59(pci_dev, GEN_CNTL_0, gen_cntl_0) != 0) {
		FUNC51("can't write GEN_CNTL_0.\n");
		return -EINVAL;
	}

	if (FUNC56(pci_dev, PCI_COMMAND, &command) != 0) {
		FUNC51("can't read PCI_COMMAND.\n");
		return -EINVAL;
	}

	command |= (PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER | PCI_COMMAND_INVALIDATE);
	if (FUNC60(pci_dev, PCI_COMMAND, command) != 0) {
		FUNC51("can't enable memory.\n");
		return -EINVAL;
	}

	if (FUNC54(pci_dev, PCI_CACHE_LINE_SIZE, &cache_size)) {
		FUNC51("can't read cache line size?\n");
		return -EINVAL;
	}

	if (cache_size < 16) {
		cache_size = 16;
		if (FUNC58(pci_dev, PCI_CACHE_LINE_SIZE, cache_size))
			FUNC51("can't set cache line size to %d\n", cache_size);
	}

	if (FUNC54(pci_dev, PCI_LATENCY_TIMER, &timer)) {
		FUNC51("can't read latency timer?\n");
		return -EINVAL;
	}

	/* from table 3.9
	 *
	 * LAT_TIMER = 1 + AVG_LAT + BURST_SIZE/BUS_SIZE
	 * 
	 * AVG_LAT: The average first data read/write latency [maximum 16 clock cycles]
	 * BURST_SIZE: 1536 bytes (read) for 622, 768 bytes (read) for 155 [192 clock cycles]
	 *
	 */ 
#define LAT_TIMER 209
	if (timer < LAT_TIMER) {
		FUNC4("latency timer was %d, setting to %d\n", timer, LAT_TIMER);
		timer = LAT_TIMER;
		if (FUNC58(pci_dev, PCI_LATENCY_TIMER, timer))
			FUNC51("can't set latency timer to %d\n", timer);
	}

	if (!(he_dev->membase = FUNC52(membase, HE_REGMAP_SIZE))) {
		FUNC51("can't set up page mapping\n");
		return -EINVAL;
	}

	/* 4.4 card reset */
	FUNC47(he_dev, 0x0, RESET_CNTL);
	FUNC47(he_dev, 0xff, RESET_CNTL);

	FUNC53(16);	/* 16 ms */
	status = FUNC45(he_dev, RESET_CNTL);
	if ((status & BOARD_RST_STATUS) == 0) {
		FUNC51("reset failed\n");
		return -EINVAL;
	}

	/* 4.5 set bus width */
	host_cntl = FUNC45(he_dev, HOST_CNTL);
	if (host_cntl & PCI_BUS_SIZE64)
		gen_cntl_0 |= ENBL_64;
	else
		gen_cntl_0 &= ~ENBL_64;

	if (disable64 == 1) {
		FUNC51("disabling 64-bit pci bus transfers\n");
		gen_cntl_0 &= ~ENBL_64;
	}

	if (gen_cntl_0 & ENBL_64)
		FUNC51("64-bit transfers enabled\n");

	FUNC59(pci_dev, GEN_CNTL_0, gen_cntl_0);

	/* 4.7 read prom contents */
	for (i = 0; i < PROD_ID_LEN; ++i)
		he_dev->prod_id[i] = FUNC61(he_dev, PROD_ID + i);

	he_dev->media = FUNC61(he_dev, MEDIA);

	for (i = 0; i < 6; ++i)
		dev->esi[i] = FUNC61(he_dev, MAC_ADDR + i);

	FUNC51("%s%s, %pM\n", he_dev->prod_id,
		he_dev->media & 0x40 ? "SM" : "MM", dev->esi);
	he_dev->atm_dev->link_rate = FUNC41(he_dev) ?
						ATM_OC12_PCR : ATM_OC3_PCR;

	/* 4.6 set host endianess */
	lb_swap = FUNC45(he_dev, LB_SWAP);
	if (FUNC41(he_dev))
		lb_swap &= ~XFER_SIZE;		/* 4 cells */
	else
		lb_swap |= XFER_SIZE;		/* 8 cells */
#ifdef __BIG_ENDIAN
	lb_swap |= DESC_WR_SWAP | INTR_SWAP | BIG_ENDIAN_HOST;
#else
	lb_swap &= ~(DESC_WR_SWAP | INTR_SWAP | BIG_ENDIAN_HOST |
			DATA_WR_SWAP | DATA_RD_SWAP | DESC_RD_SWAP);
#endif /* __BIG_ENDIAN */
	FUNC47(he_dev, lb_swap, LB_SWAP);

	/* 4.8 sdram controller initialization */
	FUNC47(he_dev, FUNC41(he_dev) ? LB_64_ENB : 0x0, SDRAM_CTL);

	/* 4.9 initialize rnum value */
	lb_swap |= FUNC22(0xf);
	FUNC47(he_dev, lb_swap, LB_SWAP);

	/* 4.10 initialize the interrupt queues */
	if ((err = FUNC36(he_dev)) != 0)
		return err;

	/* 4.11 enable pci bus controller state machines */
	host_cntl |= (OUTFF_ENB | CMDFF_ENB |
				QUICK_RD_RETRY | QUICK_WR_RETRY | PERR_INT_ENB);
	FUNC47(he_dev, host_cntl, HOST_CNTL);

	gen_cntl_0 |= INT_PROC_ENBL|INIT_ENB;
	FUNC59(pci_dev, GEN_CNTL_0, gen_cntl_0);

	/*
	 * atm network controller initialization
	 */

	/* 5.1.1 generic configuration state */

	/*
	 *		local (cell) buffer memory map
	 *                    
	 *             HE155                          HE622
	 *                                                      
	 *        0 ____________1023 bytes  0 _______________________2047 bytes
	 *         |            |            |                   |   |
	 *         |  utility   |            |        rx0        |   |
	 *        5|____________|         255|___________________| u |
	 *        6|            |         256|                   | t |
	 *         |            |            |                   | i |
	 *         |    rx0     |     row    |        tx         | l |
	 *         |            |            |                   | i |
	 *         |            |         767|___________________| t |
	 *      517|____________|         768|                   | y |
	 * row  518|            |            |        rx1        |   |
	 *         |            |        1023|___________________|___|
	 *         |            |
	 *         |    tx      |
	 *         |            |
	 *         |            |
	 *     1535|____________|
	 *     1536|            |
	 *         |    rx1     |
	 *     2047|____________|
	 *
	 */

	/* total 4096 connections */
	he_dev->vcibits = CONFIG_DEFAULT_VCIBITS;
	he_dev->vpibits = CONFIG_DEFAULT_VPIBITS;

	if (nvpibits != -1 && nvcibits != -1 && nvpibits+nvcibits != HE_MAXCIDBITS) {
		FUNC51("nvpibits + nvcibits != %d\n", HE_MAXCIDBITS);
		return -ENODEV;
	}

	if (nvpibits != -1) {
		he_dev->vpibits = nvpibits;
		he_dev->vcibits = HE_MAXCIDBITS - nvpibits;
	}

	if (nvcibits != -1) {
		he_dev->vcibits = nvcibits;
		he_dev->vpibits = HE_MAXCIDBITS - nvcibits;
	}


	if (FUNC41(he_dev)) {
		he_dev->cells_per_row = 40;
		he_dev->bytes_per_row = 2048;
		he_dev->r0_numrows = 256;
		he_dev->tx_numrows = 512;
		he_dev->r1_numrows = 256;
		he_dev->r0_startrow = 0;
		he_dev->tx_startrow = 256;
		he_dev->r1_startrow = 768;
	} else {
		he_dev->cells_per_row = 20;
		he_dev->bytes_per_row = 1024;
		he_dev->r0_numrows = 512;
		he_dev->tx_numrows = 1018;
		he_dev->r1_numrows = 512;
		he_dev->r0_startrow = 6;
		he_dev->tx_startrow = 518;
		he_dev->r1_startrow = 1536;
	}

	he_dev->cells_per_lbuf = 4;
	he_dev->buffer_limit = 4;
	he_dev->r0_numbuffs = he_dev->r0_numrows *
				he_dev->cells_per_row / he_dev->cells_per_lbuf;
	if (he_dev->r0_numbuffs > 2560)
		he_dev->r0_numbuffs = 2560;

	he_dev->r1_numbuffs = he_dev->r1_numrows *
				he_dev->cells_per_row / he_dev->cells_per_lbuf;
	if (he_dev->r1_numbuffs > 2560)
		he_dev->r1_numbuffs = 2560;

	he_dev->tx_numbuffs = he_dev->tx_numrows *
				he_dev->cells_per_row / he_dev->cells_per_lbuf;
	if (he_dev->tx_numbuffs > 5120)
		he_dev->tx_numbuffs = 5120;

	/* 5.1.2 configure hardware dependent registers */

	FUNC47(he_dev, 
		FUNC21(0x2) | FUNC0(0xf) | FUNC24(0x3) |
		FUNC15(0x3) | FUNC25(0x2) | FUNC16(0x1) |
		(FUNC41(he_dev) ? FUNC1(0x28) : FUNC1(0x46)) |
		(FUNC41(he_dev) ? FUNC7(0x50) : FUNC7(0x8c)),
								LBARB);

	FUNC47(he_dev, BANK_ON |
		(FUNC41(he_dev) ? (FUNC14(0x384) | WIDE_DATA) : FUNC14(0x150)),
								SDRAMCON);

	FUNC47(he_dev,
		(FUNC41(he_dev) ? FUNC17(1) : FUNC17(0)) |
						FUNC18(1), RCMCONFIG);
	FUNC47(he_dev,
		(FUNC41(he_dev) ? FUNC26(2) : FUNC26(1)) |
						FUNC27(1), TCMCONFIG);

	FUNC47(he_dev, he_dev->cells_per_lbuf * ATM_CELL_PAYLOAD, LB_CONFIG);

	FUNC47(he_dev, 
		(FUNC41(he_dev) ? FUNC30(8) : FUNC30(0)) |
		(FUNC41(he_dev) ? FUNC13(0) : FUNC13(1)) |
		FUNC20(he_dev->vpibits) |
		FUNC19(he_dev->vcibits),			 RC_CONFIG);

	FUNC47(he_dev, FUNC2(0x20) |
		(FUNC41(he_dev) ? FUNC28(0) : FUNC28(1)) |
		FUNC29(he_dev->vcibits) |
		FUNC6(he_dev->tx_numbuffs), 		TX_CONFIG);

	FUNC47(he_dev, 0x0, TXAAL5_PROTO);

	FUNC47(he_dev, PHY_INT_ENB |
		(FUNC41(he_dev) ? FUNC8(67 - 1) : FUNC8(50 - 1)),
								RH_CONFIG);

	/* 5.1.3 initialize connection memory */

	for (i = 0; i < TCM_MEM_SIZE; ++i)
		FUNC50(he_dev, 0, i);

	for (i = 0; i < RCM_MEM_SIZE; ++i)
		FUNC49(he_dev, 0, i);

	/*
	 *	transmit connection memory map
	 *
	 *                  tx memory
	 *          0x0 ___________________
	 *             |                   |
	 *             |                   |
	 *             |       TSRa        |
	 *             |                   |
	 *             |                   |
	 *       0x8000|___________________|
	 *             |                   |
	 *             |       TSRb        |
	 *       0xc000|___________________|
	 *             |                   |
	 *             |       TSRc        |
	 *       0xe000|___________________|
	 *             |       TSRd        |
	 *       0xf000|___________________|
	 *             |       tmABR       |
	 *      0x10000|___________________|
	 *             |                   |
	 *             |       tmTPD       |
	 *             |___________________|
	 *             |                   |
	 *                      ....
	 *      0x1ffff|___________________|
	 *
	 *
	 */

	FUNC47(he_dev, CONFIG_TSRB, TSRB_BA);
	FUNC47(he_dev, CONFIG_TSRC, TSRC_BA);
	FUNC47(he_dev, CONFIG_TSRD, TSRD_BA);
	FUNC47(he_dev, CONFIG_TMABR, TMABR_BA);
	FUNC47(he_dev, CONFIG_TPDBA, TPD_BA);


	/*
	 *	receive connection memory map
	 *
	 *          0x0 ___________________
	 *             |                   |
	 *             |                   |
	 *             |       RSRa        |
	 *             |                   |
	 *             |                   |
	 *       0x8000|___________________|
	 *             |                   |
	 *             |             rx0/1 |
	 *             |       LBM         |   link lists of local
	 *             |             tx    |   buffer memory 
	 *             |                   |
	 *       0xd000|___________________|
	 *             |                   |
	 *             |      rmABR        |
	 *       0xe000|___________________|
	 *             |                   |
	 *             |       RSRb        |
	 *             |___________________|
	 *             |                   |
	 *                      ....
	 *       0xffff|___________________|
	 */

	FUNC47(he_dev, 0x08000, RCMLBM_BA);
	FUNC47(he_dev, 0x0e000, RCMRSRB_BA);
	FUNC47(he_dev, 0x0d800, RCMABR_BA);

	/* 5.1.4 initialize local buffer free pools linked lists */

	FUNC37(he_dev);
	FUNC38(he_dev);

	FUNC47(he_dev, 0x0, RLBC_H);
	FUNC47(he_dev, 0x0, RLBC_T);
	FUNC47(he_dev, 0x0, RLBC_H2);

	FUNC47(he_dev, 512, RXTHRSH);	/* 10% of r0+r1 buffers */
	FUNC47(he_dev, 256, LITHRSH); 	/* 5% of r0+r1 buffers */

	FUNC40(he_dev);

	FUNC47(he_dev, FUNC41(he_dev) ? 0x104780 : 0x800, UBUFF_BA);

	/* 5.1.5 initialize intermediate receive queues */

	if (FUNC41(he_dev)) {
		FUNC47(he_dev, 0x000f, G0_INMQ_S);
		FUNC47(he_dev, 0x200f, G0_INMQ_L);

		FUNC47(he_dev, 0x001f, G1_INMQ_S);
		FUNC47(he_dev, 0x201f, G1_INMQ_L);

		FUNC47(he_dev, 0x002f, G2_INMQ_S);
		FUNC47(he_dev, 0x202f, G2_INMQ_L);

		FUNC47(he_dev, 0x003f, G3_INMQ_S);
		FUNC47(he_dev, 0x203f, G3_INMQ_L);

		FUNC47(he_dev, 0x004f, G4_INMQ_S);
		FUNC47(he_dev, 0x204f, G4_INMQ_L);

		FUNC47(he_dev, 0x005f, G5_INMQ_S);
		FUNC47(he_dev, 0x205f, G5_INMQ_L);

		FUNC47(he_dev, 0x006f, G6_INMQ_S);
		FUNC47(he_dev, 0x206f, G6_INMQ_L);

		FUNC47(he_dev, 0x007f, G7_INMQ_S);
		FUNC47(he_dev, 0x207f, G7_INMQ_L);
	} else {
		FUNC47(he_dev, 0x0000, G0_INMQ_S);
		FUNC47(he_dev, 0x0008, G0_INMQ_L);

		FUNC47(he_dev, 0x0001, G1_INMQ_S);
		FUNC47(he_dev, 0x0009, G1_INMQ_L);

		FUNC47(he_dev, 0x0002, G2_INMQ_S);
		FUNC47(he_dev, 0x000a, G2_INMQ_L);

		FUNC47(he_dev, 0x0003, G3_INMQ_S);
		FUNC47(he_dev, 0x000b, G3_INMQ_L);

		FUNC47(he_dev, 0x0004, G4_INMQ_S);
		FUNC47(he_dev, 0x000c, G4_INMQ_L);

		FUNC47(he_dev, 0x0005, G5_INMQ_S);
		FUNC47(he_dev, 0x000d, G5_INMQ_L);

		FUNC47(he_dev, 0x0006, G6_INMQ_S);
		FUNC47(he_dev, 0x000e, G6_INMQ_L);

		FUNC47(he_dev, 0x0007, G7_INMQ_S);
		FUNC47(he_dev, 0x000f, G7_INMQ_L);
	}

	/* 5.1.6 application tunable parameters */

	FUNC47(he_dev, 0x0, MCC);
	FUNC47(he_dev, 0x0, OEC);
	FUNC47(he_dev, 0x0, DCC);
	FUNC47(he_dev, 0x0, CEC);
	
	/* 5.1.7 cs block initialization */

	FUNC33(he_dev);

	/* 5.1.8 cs block connection memory initialization */
	
	if (FUNC34(he_dev) < 0)
		return -ENOMEM;

	/* 5.1.10 initialize host structures */

	FUNC39(he_dev);

	he_dev->tpd_pool = FUNC32("tpd", &he_dev->pci_dev->dev,
					   sizeof(struct he_tpd), TPD_ALIGNMENT, 0);
	if (he_dev->tpd_pool == NULL) {
		FUNC51("unable to create tpd dma_pool\n");
		return -ENOMEM;         
	}

	FUNC5(&he_dev->outstanding_tpds);

	if (FUNC35(he_dev, 0) != 0)
		return -ENOMEM;

	for (group = 1; group < HE_NUM_GROUPS; ++group) {
		FUNC47(he_dev, 0x0, G0_RBPS_S + (group * 32));
		FUNC47(he_dev, 0x0, G0_RBPS_T + (group * 32));
		FUNC47(he_dev, 0x0, G0_RBPS_QI + (group * 32));
		FUNC47(he_dev, FUNC10(0x1) | FUNC9(0x0),
						G0_RBPS_BS + (group * 32));

		FUNC47(he_dev, 0x0, G0_RBPL_S + (group * 32));
		FUNC47(he_dev, 0x0, G0_RBPL_T + (group * 32));
		FUNC47(he_dev, FUNC10(0x1) | FUNC9(0x0),
						G0_RBPL_QI + (group * 32));
		FUNC47(he_dev, 0x0, G0_RBPL_BS + (group * 32));

		FUNC47(he_dev, 0x0, G0_RBRQ_ST + (group * 16));
		FUNC47(he_dev, 0x0, G0_RBRQ_H + (group * 16));
		FUNC47(he_dev, FUNC12(0x1) | FUNC11(0x0),
						G0_RBRQ_Q + (group * 16));
		FUNC47(he_dev, 0x0, G0_RBRQ_I + (group * 16));

		FUNC47(he_dev, 0x0, G0_TBRQ_B_T + (group * 16));
		FUNC47(he_dev, 0x0, G0_TBRQ_H + (group * 16));
		FUNC47(he_dev, FUNC23(0x1),
						G0_TBRQ_THRESH + (group * 16));
		FUNC47(he_dev, 0x0, G0_TBRQ_S + (group * 16));
	}

	/* host status page */

	he_dev->hsp = FUNC31(&he_dev->pci_dev->dev,
					 sizeof(struct he_hsp),
					 &he_dev->hsp_phys, GFP_KERNEL);
	if (he_dev->hsp == NULL) {
		FUNC51("failed to allocate host status page\n");
		return -ENOMEM;
	}
	FUNC47(he_dev, he_dev->hsp_phys, HSP_BA);

	/* initialize framer */

#ifdef CONFIG_ATM_HE_USE_SUNI
	if (he_isMM(he_dev))
		suni_init(he_dev->atm_dev);
	if (he_dev->atm_dev->phy && he_dev->atm_dev->phy->start)
		he_dev->atm_dev->phy->start(he_dev->atm_dev);
#endif /* CONFIG_ATM_HE_USE_SUNI */

	if (sdh) {
		/* this really should be in suni.c but for now... */
		int val;

		val = FUNC43(he_dev->atm_dev, SUNI_TPOP_APM);
		val = (val & ~SUNI_TPOP_APM_S) | (SUNI_TPOP_S_SDH << SUNI_TPOP_APM_S_SHIFT);
		FUNC44(he_dev->atm_dev, val, SUNI_TPOP_APM);
		FUNC44(he_dev->atm_dev, SUNI_TACP_IUCHP_CLP, SUNI_TACP_IUCHP);
	}

	/* 5.1.12 enable transmit and receive */

	reg = FUNC46(he_dev, CS_ERCTL0);
	reg |= TX_ENABLE|ER_ENABLE;
	FUNC48(he_dev, reg, CS_ERCTL0);

	reg = FUNC45(he_dev, RC_CONFIG);
	reg |= RX_ENABLE;
	FUNC47(he_dev, reg, RC_CONFIG);

	for (i = 0; i < HE_NUM_CS_STPER; ++i) {
		he_dev->cs_stper[i].inuse = 0;
		he_dev->cs_stper[i].pcr = -1;
	}
	he_dev->total_bw = 0;


	/* atm linux initialization */

	he_dev->atm_dev->ci_range.vpi_bits = he_dev->vpibits;
	he_dev->atm_dev->ci_range.vci_bits = he_dev->vcibits;

	he_dev->irq_peak = 0;
	he_dev->rbrq_peak = 0;
	he_dev->rbpl_peak = 0;
	he_dev->tbrq_peak = 0;

	FUNC4("hell bent for leather!\n");

	return 0;
}