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
struct hci_uart {struct bcm_data* priv; int /*<<< orphan*/  hdev; scalar_t__ serdev; } ;
struct bcm_device {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/ * hu; } ;
struct bcm_data {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  txq; struct bcm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bcm_device*) ; 
 int /*<<< orphan*/  bcm_device_lock ; 
 int FUNC2 (struct bcm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,struct bcm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct bcm_device* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct hci_uart *hu)
{
	struct bcm_data *bcm = hu->priv;
	struct bcm_device *bdev = NULL;
	int err;

	FUNC3(hu->hdev, "hu %p", hu);

	/* Protect bcm->dev against removal of the device or driver */
	FUNC9(&bcm_device_lock);

	if (hu->serdev) {
		bdev = FUNC13(hu->serdev);
	} else if (FUNC1(bcm->dev)) {
		bdev = bcm->dev;
#ifdef CONFIG_PM
		bdev->hu = NULL;
#endif
	}

	if (bdev) {
		if (FUNC0(CONFIG_PM) && bdev->irq > 0) {
			FUNC6(bdev->dev, bdev->irq, bdev);
			FUNC5(bdev->dev, false);
			FUNC11(bdev->dev);
		}

		err = FUNC2(bdev, false);
		if (err)
			FUNC4(hu->hdev, "Failed to power down");
		else
			FUNC12(bdev->dev);
	}
	FUNC10(&bcm_device_lock);

	FUNC14(&bcm->txq);
	FUNC8(bcm->rx_skb);
	FUNC7(bcm);

	hu->priv = NULL;
	return 0;
}