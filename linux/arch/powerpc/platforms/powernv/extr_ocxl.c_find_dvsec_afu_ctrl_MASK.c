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
typedef  scalar_t__ u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ OCXL_DVSEC_AFU_CTRL_AFU_IDX ; 
 int /*<<< orphan*/  OCXL_DVSEC_AFU_CTRL_ID ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *dev, u8 afu_idx)
{
	int vsec = 0;
	u8 idx;

	while ((vsec = FUNC0(dev, OCXL_DVSEC_AFU_CTRL_ID,
					   vsec))) {
		FUNC1(dev, vsec + OCXL_DVSEC_AFU_CTRL_AFU_IDX,
				&idx);
		if (idx == afu_idx)
			return vsec;
	}
	return 0;
}