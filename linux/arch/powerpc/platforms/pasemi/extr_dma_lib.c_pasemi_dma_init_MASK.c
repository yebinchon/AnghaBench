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
typedef  int u32 ;
struct resource {int start; int end; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 unsigned long HZ ; 
 int MAX_FLAGS ; 
 int MAX_FUN ; 
 int MAX_RXCH ; 
 int MAX_TXCH ; 
 int /*<<< orphan*/  PAS_DMA_CAP_RXCH ; 
 int PAS_DMA_CAP_RXCH_RCHN_M ; 
 int PAS_DMA_CAP_RXCH_RCHN_S ; 
 int /*<<< orphan*/  PAS_DMA_CAP_TXCH ; 
 int PAS_DMA_CAP_TXCH_TCHN_M ; 
 int PAS_DMA_CAP_TXCH_TCHN_S ; 
 int /*<<< orphan*/  PAS_DMA_COM_CFG ; 
 int /*<<< orphan*/  PAS_DMA_COM_RXCMD ; 
 int PAS_DMA_COM_RXCMD_EN ; 
 int /*<<< orphan*/  PAS_DMA_COM_RXSTA ; 
 int /*<<< orphan*/  PAS_DMA_COM_TXCMD ; 
 int PAS_DMA_COM_TXCMD_EN ; 
 int /*<<< orphan*/  PAS_DMA_COM_TXSTA ; 
 int /*<<< orphan*/  PAS_DMA_TXF_CFLG0 ; 
 int /*<<< orphan*/  PAS_DMA_TXF_CFLG1 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_PASEMI ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  base_hw_irq ; 
 struct pci_dev* dma_pdev ; 
 void* dma_regs ; 
 int /*<<< orphan*/  dma_status ; 
 int /*<<< orphan*/  flags_free ; 
 int /*<<< orphan*/  fun_free ; 
 void* iob_regs ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 void** mac_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int num_rxch ; 
 int num_txch ; 
 int FUNC5 (struct device_node*,int,struct resource*) ; 
 int /*<<< orphan*/  pasemi ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct device_node* FUNC9 (struct pci_dev*) ; 
 struct pci_dev* FUNC10 (int /*<<< orphan*/ ,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  rxch_free ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  txch_free ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(void)
{
	static DEFINE_SPINLOCK(init_lock);
	struct pci_dev *iob_pdev;
	struct pci_dev *pdev;
	struct resource res;
	struct device_node *dn;
	int i, intf, err = 0;
	unsigned long timeout;
	u32 tmp;

	if (!FUNC3(pasemi))
		return -ENODEV;

	FUNC15(&init_lock);

	/* Make sure we haven't already initialized */
	if (dma_pdev)
		goto out;

	iob_pdev = FUNC10(PCI_VENDOR_ID_PASEMI, 0xa001, NULL);
	if (!iob_pdev) {
		FUNC0();
		FUNC13("Can't find I/O Bridge\n");
		err = -ENODEV;
		goto out;
	}
	iob_regs = FUNC4(iob_pdev, 0);

	dma_pdev = FUNC10(PCI_VENDOR_ID_PASEMI, 0xa007, NULL);
	if (!dma_pdev) {
		FUNC0();
		FUNC13("Can't find DMA controller\n");
		err = -ENODEV;
		goto out;
	}
	dma_regs = FUNC4(dma_pdev, 0);
	base_hw_irq = FUNC18(dma_pdev->irq);

	FUNC11(dma_pdev, PAS_DMA_CAP_TXCH, &tmp);
	num_txch = (tmp & PAS_DMA_CAP_TXCH_TCHN_M) >> PAS_DMA_CAP_TXCH_TCHN_S;

	FUNC11(dma_pdev, PAS_DMA_CAP_RXCH, &tmp);
	num_rxch = (tmp & PAS_DMA_CAP_RXCH_RCHN_M) >> PAS_DMA_CAP_RXCH_RCHN_S;

	intf = 0;
	for (pdev = FUNC10(PCI_VENDOR_ID_PASEMI, 0xa006, NULL);
	     pdev;
	     pdev = FUNC10(PCI_VENDOR_ID_PASEMI, 0xa006, pdev))
		mac_regs[intf++] = FUNC4(pdev, 0);

	FUNC8(pdev);

	for (pdev = FUNC10(PCI_VENDOR_ID_PASEMI, 0xa005, NULL);
	     pdev;
	     pdev = FUNC10(PCI_VENDOR_ID_PASEMI, 0xa005, pdev))
		mac_regs[intf++] = FUNC4(pdev, 0);

	FUNC8(pdev);

	dn = FUNC9(iob_pdev);
	if (dn)
		err = FUNC5(dn, 1, &res);
	if (!dn || err) {
		/* Fallback for old firmware */
		res.start = 0xfd800000;
		res.end = res.start + 0x1000;
	}
	dma_status = FUNC2(res.start, FUNC14(&res));
	FUNC8(iob_pdev);

	for (i = 0; i < MAX_TXCH; i++)
		FUNC1(i, txch_free);

	for (i = 0; i < MAX_RXCH; i++)
		FUNC1(i, rxch_free);

	timeout = jiffies + HZ;
	FUNC7(PAS_DMA_COM_RXCMD, 0);
	while (FUNC6(PAS_DMA_COM_RXSTA) & 1) {
		if (FUNC17(jiffies, timeout)) {
			FUNC13("Warning: Could not disable RX section\n");
			break;
		}
	}

	timeout = jiffies + HZ;
	FUNC7(PAS_DMA_COM_TXCMD, 0);
	while (FUNC6(PAS_DMA_COM_TXSTA) & 1) {
		if (FUNC17(jiffies, timeout)) {
			FUNC13("Warning: Could not disable TX section\n");
			break;
		}
	}

	/* setup resource allocations for the different DMA sections */
	tmp = FUNC6(PAS_DMA_COM_CFG);
	FUNC7(PAS_DMA_COM_CFG, tmp | 0x18000000);

	/* enable tx section */
	FUNC7(PAS_DMA_COM_TXCMD, PAS_DMA_COM_TXCMD_EN);

	/* enable rx section */
	FUNC7(PAS_DMA_COM_RXCMD, PAS_DMA_COM_RXCMD_EN);

	for (i = 0; i < MAX_FLAGS; i++)
		FUNC1(i, flags_free);

	for (i = 0; i < MAX_FUN; i++)
		FUNC1(i, fun_free);

	/* clear all status flags */
	FUNC7(PAS_DMA_TXF_CFLG0, 0xffffffff);
	FUNC7(PAS_DMA_TXF_CFLG1, 0xffffffff);

	FUNC12("PA Semi PWRficient DMA library initialized "
		"(%d tx, %d rx channels)\n", num_txch, num_rxch);

out:
	FUNC16(&init_lock);
	return err;
}