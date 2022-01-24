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
struct zpci_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZPCI_FN_STATE_ONLINE ; 
 int /*<<< orphan*/  ZPCI_NR_DMA_SPACES ; 
 int /*<<< orphan*/  FUNC0 (struct zpci_dev*) ; 
 int FUNC1 (struct zpci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct zpci_dev*) ; 

int FUNC3(struct zpci_dev *zdev)
{
	int rc;

	rc = FUNC1(zdev, ZPCI_NR_DMA_SPACES);
	if (rc)
		goto out;

	rc = FUNC2(zdev);
	if (rc)
		goto out_dma;

	zdev->state = ZPCI_FN_STATE_ONLINE;
	return 0;

out_dma:
	FUNC0(zdev);
out:
	return rc;
}