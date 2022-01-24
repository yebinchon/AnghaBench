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
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIIX4_FUNC1_IDETIM_PRIMARY_HI ; 
 unsigned char PIIX4_FUNC1_IDETIM_PRIMARY_HI_IDE_DECODE_EN ; 
 int /*<<< orphan*/  PIIX4_FUNC1_IDETIM_SECONDARY_HI ; 
 unsigned char PIIX4_FUNC1_IDETIM_SECONDARY_HI_IDE_DECODE_EN ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	unsigned char reg_val;

	/* Done by YAMON 2.02 onwards */
	if (FUNC0(pdev->devfn) == 10) {
		/*
		 * IDE Decode enable.
		 */
		FUNC1(pdev, PIIX4_FUNC1_IDETIM_PRIMARY_HI,
			&reg_val);
		FUNC2(pdev, PIIX4_FUNC1_IDETIM_PRIMARY_HI,
			reg_val|PIIX4_FUNC1_IDETIM_PRIMARY_HI_IDE_DECODE_EN);
		FUNC1(pdev, PIIX4_FUNC1_IDETIM_SECONDARY_HI,
			&reg_val);
		FUNC2(pdev, PIIX4_FUNC1_IDETIM_SECONDARY_HI,
			reg_val|PIIX4_FUNC1_IDETIM_SECONDARY_HI_IDE_DECODE_EN);
	}
}