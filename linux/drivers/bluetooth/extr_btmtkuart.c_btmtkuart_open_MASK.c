#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct btmtkuart_dev {int curr_speed; int desired_speed; int stp_cursor; TYPE_1__* serdev; int /*<<< orphan*/  clk; scalar_t__ stp_dlen; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct btmtkuart_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct btmtkuart_dev* FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC14(struct hci_dev *hdev)
{
	struct btmtkuart_dev *bdev = FUNC4(hdev);
	struct device *dev;
	int err;

	err = FUNC11(bdev->serdev);
	if (err) {
		FUNC0(hdev, "Unable to open UART device %s",
			   FUNC3(&bdev->serdev->dev));
		goto err_open;
	}

	if (FUNC1(bdev)) {
		if (bdev->curr_speed != bdev->desired_speed)
			err = FUNC12(bdev->serdev,
							 115200);
		else
			err = FUNC12(bdev->serdev,
							 bdev->desired_speed);

		if (err < 0) {
			FUNC0(hdev, "Unable to set baudrate UART device %s",
				   FUNC3(&bdev->serdev->dev));
			goto  err_serdev_close;
		}

		FUNC13(bdev->serdev, false);
	}

	bdev->stp_cursor = 2;
	bdev->stp_dlen = 0;

	dev = &bdev->serdev->dev;

	/* Enable the power domain and clock the device requires */
	FUNC6(dev);
	err = FUNC7(dev);
	if (err < 0) {
		FUNC8(dev);
		goto err_disable_rpm;
	}

	err = FUNC2(bdev->clk);
	if (err < 0)
		goto err_put_rpm;

	return 0;

err_put_rpm:
	FUNC9(dev);
err_disable_rpm:
	FUNC5(dev);
err_serdev_close:
	FUNC10(bdev->serdev);
err_open:
	return err;
}