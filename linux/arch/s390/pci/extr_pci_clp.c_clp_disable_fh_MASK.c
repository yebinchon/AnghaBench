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
typedef  int /*<<< orphan*/  u32 ;
struct zpci_dev {int /*<<< orphan*/  fh; int /*<<< orphan*/  fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLP_SET_DISABLE_PCI_FN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct zpci_dev *zdev)
{
	u32 fh = zdev->fh;
	int rc;

	if (!FUNC1(zdev))
		return 0;

	rc = FUNC0(&fh, 0, CLP_SET_DISABLE_PCI_FN);
	FUNC2(3, "dis fid:%x, fh:%x, rc:%d\n", zdev->fid, fh, rc);
	if (!rc)
		zdev->fh = fh;

	return rc;
}