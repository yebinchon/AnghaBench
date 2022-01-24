#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct tpm_chip {struct device dev; } ;
struct ibmvtpm_dev {TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int H_BUSY ; 
 int /*<<< orphan*/  H_ENABLE_CRQ ; 
 int H_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 void* FUNC2 (struct device*) ; 
 int FUNC3 (struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct tpm_chip *chip = FUNC2(dev);
	struct ibmvtpm_dev *ibmvtpm = FUNC2(&chip->dev);
	int rc = 0;

	do {
		if (rc)
			FUNC4(100);
		rc = FUNC5(H_ENABLE_CRQ,
					ibmvtpm->vdev->unit_address);
	} while (rc == H_IN_PROGRESS || rc == H_BUSY || FUNC0(rc));

	if (rc) {
		FUNC1(dev, "Error enabling ibmvtpm rc=%d\n", rc);
		return rc;
	}

	rc = FUNC6(ibmvtpm->vdev);
	if (rc) {
		FUNC1(dev, "Error vio_enable_interrupts rc=%d\n", rc);
		return rc;
	}

	rc = FUNC3(ibmvtpm);
	if (rc)
		FUNC1(dev, "Error send_init rc=%d\n", rc);

	return rc;
}