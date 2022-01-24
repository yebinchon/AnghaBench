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
struct uPD98402_priv {int dummy; } ;
struct k_sonet_stats {int dummy; } ;
struct atm_dev {int /*<<< orphan*/  dev_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_cells; int /*<<< orphan*/  tx_cells; int /*<<< orphan*/  corr_hcs; } ;
struct TYPE_4__ {TYPE_1__ sonet_stats; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCMR ; 
 int /*<<< orphan*/  PCOCR ; 
 int /*<<< orphan*/  PCOMR ; 
 int /*<<< orphan*/  PCR ; 
 int /*<<< orphan*/  PICR ; 
 int /*<<< orphan*/  PIMR ; 
 TYPE_2__* FUNC2 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct atm_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int uPD98402_INT_ALM ; 
 int uPD98402_INT_LOS ; 
 int uPD98402_INT_PFM ; 
 int uPD98402_INT_RFO ; 
 int uPD98402_PCO_HECC ; 
 int uPD98402_PFM_FJ ; 

__attribute__((used)) static int FUNC9(struct atm_dev *dev)
{
	FUNC0("phy_start\n");
	if (!(dev->dev_data = FUNC6(sizeof(struct uPD98402_priv),GFP_KERNEL)))
		return -ENOMEM;
	FUNC8(&FUNC2(dev)->lock);
	FUNC7(&FUNC2(dev)->sonet_stats,0,sizeof(struct k_sonet_stats));
	(void) FUNC1(PCR); /* clear performance events */
	FUNC3(uPD98402_PFM_FJ,PCMR); /* ignore frequency adj */
	(void) FUNC1(PCOCR); /* clear overflows */
	FUNC3(~uPD98402_PCO_HECC,PCOMR);
	(void) FUNC1(PICR); /* clear interrupts */
	FUNC3(~(uPD98402_INT_PFM | uPD98402_INT_ALM | uPD98402_INT_RFO |
	  uPD98402_INT_LOS),PIMR); /* enable them */
	(void) FUNC5(dev,NULL,1); /* clear kernel counters */
	FUNC4(&FUNC2(dev)->sonet_stats.corr_hcs,-1);
	FUNC4(&FUNC2(dev)->sonet_stats.tx_cells,-1);
	FUNC4(&FUNC2(dev)->sonet_stats.rx_cells,-1);
	return 0;
}