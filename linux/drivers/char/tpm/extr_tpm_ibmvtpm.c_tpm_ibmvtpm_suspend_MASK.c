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
struct tpm_chip {struct device dev; } ;
struct ibmvtpm_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int H_SUCCESS ; 
 int /*<<< orphan*/  IBMVTPM_VALID_CMD ; 
 int /*<<< orphan*/  VTPM_PREPARE_TO_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct tpm_chip *chip = FUNC1(dev);
	struct ibmvtpm_dev *ibmvtpm = FUNC1(&chip->dev);
	int rc = 0;

	rc = FUNC2(ibmvtpm->vdev,
			IBMVTPM_VALID_CMD, VTPM_PREPARE_TO_SUSPEND, 0, 0);
	if (rc != H_SUCCESS)
		FUNC0(ibmvtpm->dev,
			"tpm_ibmvtpm_suspend failed rc=%d\n", rc);

	return rc;
}