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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {struct pci_bus* bus; int /*<<< orphan*/  dev; } ;
struct pci_bus {int dummy; } ;
struct owl_ctx {int /*<<< orphan*/  eeprom_load; } ;
struct firmware {int size; scalar_t__ data; } ;
struct ath9k_platform_data {int /*<<< orphan*/ * eeprom_name; int /*<<< orphan*/  eeprom_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_dev*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ath9k_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 

__attribute__((used)) static void FUNC11(const struct firmware *fw, void *context)
{
	struct pci_dev *pdev = (struct pci_dev *) context;
	struct owl_ctx *ctx = (struct owl_ctx *) FUNC5(pdev);
	struct ath9k_platform_data *pdata = FUNC3(&pdev->dev);
	struct pci_bus *bus;

	FUNC1(&ctx->eeprom_load);

	if (!fw) {
		FUNC2(&pdev->dev, "no eeprom data received.\n");
		goto release;
	}

	/* also note that we are doing *u16 operations on the file */
	if (fw->size > sizeof(pdata->eeprom_data) || fw->size < 0x200 ||
	    (fw->size & 1) == 1) {
		FUNC2(&pdev->dev, "eeprom file has an invalid size.\n");
		goto release;
	}

	if (pdata) {
		FUNC4(pdata->eeprom_data, fw->data, fw->size);

		/*
		 * eeprom has been successfully loaded - pass the data to ath9k
		 * but remove the eeprom_name, so it doesn't try to load it too.
		 */
		pdata->eeprom_name = NULL;
	}

	if (FUNC0(pdev, (const u16 *) fw->data, fw->size))
		goto release;

	FUNC6();
	bus = pdev->bus;
	FUNC8(pdev);
	/*
	 * the device should come back with the proper
	 * ProductId. But we have to initiate a rescan.
	 */
	FUNC7(bus);
	FUNC9();

release:
	FUNC10(fw);
}