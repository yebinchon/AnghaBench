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
typedef  int u16 ;
struct piix_map_db {int port_enable; } ;
struct pci_dev {int dummy; } ;
struct ata_host {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  ICH5_PCS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_host *host,
			  const struct piix_map_db *map_db)
{
	struct pci_dev *pdev = FUNC4(host->dev);
	u16 pcs, new_pcs;

	FUNC2(pdev, ICH5_PCS, &pcs);

	new_pcs = pcs | map_db->port_enable;

	if (new_pcs != pcs) {
		FUNC0("updating PCS from 0x%x to 0x%x\n", pcs, new_pcs);
		FUNC3(pdev, ICH5_PCS, new_pcs);
		FUNC1(150);
	}
}