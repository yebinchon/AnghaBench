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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct ath9k_platform_data {char const* eeprom_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_FILENAME_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct ath9k_platform_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 char* FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC5(struct pci_dev *pdev)
{
	struct device *dev = &pdev->dev;
	struct ath9k_platform_data *pdata;
	char *eeprom_name;

	/* try the existing platform data first */
	pdata = FUNC1(dev);
	if (pdata && pdata->eeprom_name)
		return pdata->eeprom_name;

	FUNC0(dev, "using auto-generated eeprom filename\n");

	eeprom_name = FUNC3(dev, EEPROM_FILENAME_LEN, GFP_KERNEL);
	if (!eeprom_name)
		return NULL;

	/* this should match the pattern used in ath9k/init.c */
	FUNC4(eeprom_name, EEPROM_FILENAME_LEN, "ath9k-eeprom-pci-%s.bin",
		  FUNC2(dev));

	return eeprom_name;
}