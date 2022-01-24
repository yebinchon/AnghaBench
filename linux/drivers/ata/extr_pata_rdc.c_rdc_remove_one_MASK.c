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
struct rdc_host_priv {int /*<<< orphan*/  saved_iocfg; } ;
struct pci_dev {int dummy; } ;
struct ata_host {struct rdc_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct ata_host* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct ata_host *host = FUNC1(pdev);
	struct rdc_host_priv *hpriv = host->private_data;

	FUNC2(pdev, 0x54, hpriv->saved_iocfg);

	FUNC0(pdev);
}