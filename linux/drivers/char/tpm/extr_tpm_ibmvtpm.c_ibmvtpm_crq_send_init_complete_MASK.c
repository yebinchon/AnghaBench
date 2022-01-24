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
struct ibmvtpm_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int H_SUCCESS ; 
 int /*<<< orphan*/  INIT_CRQ_COMP_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ibmvtpm_dev *ibmvtpm)
{
	int rc;

	rc = FUNC1(ibmvtpm->vdev, INIT_CRQ_COMP_CMD);
	if (rc != H_SUCCESS)
		FUNC0(ibmvtpm->dev,
			"ibmvtpm_crq_send_init_complete failed rc=%d\n", rc);

	return rc;
}