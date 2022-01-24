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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct zpci_dev {int /*<<< orphan*/  fid; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLP_SET_ENABLE_MIO ; 
 int /*<<< orphan*/  CLP_SET_ENABLE_PCI_FN ; 
 int /*<<< orphan*/  FUNC0 (struct zpci_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct zpci_dev*) ; 

int FUNC4(struct zpci_dev *zdev, u8 nr_dma_as)
{
	u32 fh = zdev->fh;
	int rc;

	rc = FUNC1(&fh, nr_dma_as, CLP_SET_ENABLE_PCI_FN);
	FUNC2(3, "ena fid:%x, fh:%x, rc:%d\n", zdev->fid, fh, rc);
	if (rc)
		goto out;

	zdev->fh = fh;
	if (FUNC3(zdev)) {
		rc = FUNC1(&fh, nr_dma_as, CLP_SET_ENABLE_MIO);
		FUNC2(3, "ena mio fid:%x, fh:%x, rc:%d\n", zdev->fid, fh, rc);
		if (rc)
			FUNC0(zdev);
	}
out:
	return rc;
}