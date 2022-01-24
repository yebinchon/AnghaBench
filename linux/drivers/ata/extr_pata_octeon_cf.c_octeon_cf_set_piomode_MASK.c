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
struct TYPE_2__ {int waitm; int pause; int wr_hld; int rd_hld; int we; int oe; scalar_t__ adr; void* ce; scalar_t__ wait; scalar_t__ page; scalar_t__ ale; scalar_t__ pages; scalar_t__ pagem; } ;
union cvmx_mio_boot_reg_timx {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_cf_port {int /*<<< orphan*/  cs1; scalar_t__ is_true_ide; int /*<<< orphan*/  cs0; } ;
struct ata_timing {int active; scalar_t__ setup; scalar_t__ cycle; } ;
struct ata_port {struct octeon_cf_port* private_data; } ;
struct ata_device {int /*<<< orphan*/  pio_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 long long FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct ata_port *ap, struct ata_device *dev)
{
	struct octeon_cf_port *cf_port = ap->private_data;
	union cvmx_mio_boot_reg_timx reg_tim;
	int T;
	struct ata_timing timing;

	unsigned int div;
	int use_iordy;
	int trh;
	int pause;
	/* These names are timing parameters from the ATA spec */
	int t2;

	/*
	 * A divisor value of four will overflow the timing fields at
	 * clock rates greater than 800MHz
	 */
	if (FUNC8() <= 800000000)
		div = 4;
	else
		div = 8;
	T = (int)((1000000000000LL * div) / FUNC8());

	FUNC0(FUNC3(dev, dev->pio_mode, &timing, T, T));

	t2 = timing.active;
	if (t2)
		t2--;

	trh = FUNC6(div, 20);
	if (trh)
		trh--;

	pause = (int)timing.cycle - (int)timing.active -
		(int)timing.setup - trh;
	if (pause < 0)
		pause = 0;
	if (pause)
		pause--;

	FUNC7(cf_port->cs0, div);
	if (cf_port->is_true_ide)
		/* True IDE mode, program both chip selects.  */
		FUNC7(cf_port->cs1, div);


	use_iordy = FUNC2(dev);

	reg_tim.u64 = FUNC4(FUNC1(cf_port->cs0));
	/* Disable page mode */
	reg_tim.s.pagem = 0;
	/* Enable dynamic timing */
	reg_tim.s.waitm = use_iordy;
	/* Pages are disabled */
	reg_tim.s.pages = 0;
	/* We don't use multiplexed address mode */
	reg_tim.s.ale = 0;
	/* Not used */
	reg_tim.s.page = 0;
	/* Time after IORDY to coninue to assert the data */
	reg_tim.s.wait = 0;
	/* Time to wait to complete the cycle. */
	reg_tim.s.pause = pause;
	/* How long to hold after a write to de-assert CE. */
	reg_tim.s.wr_hld = trh;
	/* How long to wait after a read to de-assert CE. */
	reg_tim.s.rd_hld = trh;
	/* How long write enable is asserted */
	reg_tim.s.we = t2;
	/* How long read enable is asserted */
	reg_tim.s.oe = t2;
	/* Time after CE that read/write starts */
	reg_tim.s.ce = FUNC6(div, 5);
	/* Time before CE that address is valid */
	reg_tim.s.adr = 0;

	/* Program the bootbus region timing for the data port chip select. */
	FUNC5(FUNC1(cf_port->cs0), reg_tim.u64);
	if (cf_port->is_true_ide)
		/* True IDE mode, program both chip selects.  */
		FUNC5(FUNC1(cf_port->cs1),
			       reg_tim.u64);
}