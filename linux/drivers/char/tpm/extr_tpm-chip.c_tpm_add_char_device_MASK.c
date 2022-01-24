#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  devt; } ;
struct tpm_chip {int flags; int /*<<< orphan*/  dev_num; TYPE_1__ devs; int /*<<< orphan*/  cdevs; TYPE_1__ dev; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  dev_nums_idr ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tpm_chip *chip)
{
	int rc;

	rc = FUNC2(&chip->cdev, &chip->dev);
	if (rc) {
		FUNC3(&chip->dev,
			"unable to cdev_device_add() %s, major %d, minor %d, err=%d\n",
			FUNC4(&chip->dev), FUNC0(chip->dev.devt),
			FUNC1(chip->dev.devt), rc);
		return rc;
	}

	if (chip->flags & TPM_CHIP_FLAG_TPM2) {
		rc = FUNC2(&chip->cdevs, &chip->devs);
		if (rc) {
			FUNC3(&chip->devs,
				"unable to cdev_device_add() %s, major %d, minor %d, err=%d\n",
				FUNC4(&chip->devs), FUNC0(chip->devs.devt),
				FUNC1(chip->devs.devt), rc);
			return rc;
		}
	}

	/* Make the chip available. */
	FUNC6(&idr_lock);
	FUNC5(&dev_nums_idr, chip, chip->dev_num);
	FUNC7(&idr_lock);

	return rc;
}