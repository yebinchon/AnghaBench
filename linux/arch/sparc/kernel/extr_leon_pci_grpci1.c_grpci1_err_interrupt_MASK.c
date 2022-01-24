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
struct grpci1_priv {int pci_err_mask; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_DETECTED_PARITY ; 
 int PCI_STATUS_PARITY ; 
 int PCI_STATUS_REC_MASTER_ABORT ; 
 int PCI_STATUS_REC_TARGET_ABORT ; 
 int PCI_STATUS_SIG_SYSTEM_ERROR ; 
 int PCI_STATUS_SIG_TARGET_ABORT ; 
 int /*<<< orphan*/  TGT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct grpci1_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct grpci1_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct grpci1_priv *priv = arg;
	u32 status;

	FUNC1(priv, TGT, 0, PCI_STATUS, &status);
	status &= priv->pci_err_mask;

	if (status == 0)
		return IRQ_NONE;

	if (status & PCI_STATUS_PARITY)
		FUNC0(priv->dev, "Data Parity Error\n");

	if (status & PCI_STATUS_SIG_TARGET_ABORT)
		FUNC0(priv->dev, "Signalled Target Abort\n");

	if (status & PCI_STATUS_REC_TARGET_ABORT)
		FUNC0(priv->dev, "Received Target Abort\n");

	if (status & PCI_STATUS_REC_MASTER_ABORT)
		FUNC0(priv->dev, "Received Master Abort\n");

	if (status & PCI_STATUS_SIG_SYSTEM_ERROR)
		FUNC0(priv->dev, "Signalled System Error\n");

	if (status & PCI_STATUS_DETECTED_PARITY)
		FUNC0(priv->dev, "Parity Error\n");

	/* Clear handled INT TYPE IRQs */
	FUNC2(priv, TGT, 0, PCI_STATUS, status);

	return IRQ_HANDLED;
}