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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct ibmvtpm_dev {size_t rtce_size; int tpm_processing_cmd; int /*<<< orphan*/  rtce_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  rtce_dma_handle; int /*<<< orphan*/  vdev; scalar_t__ rtce_buf; scalar_t__ res_len; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int H_SUCCESS ; 
 int /*<<< orphan*/  IBMVTPM_VALID_CMD ; 
 int /*<<< orphan*/  VTPM_TPM_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct ibmvtpm_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct ibmvtpm_dev *ibmvtpm = FUNC1(&chip->dev);
	int rc, sig;

	if (!ibmvtpm->rtce_buf) {
		FUNC0(ibmvtpm->dev, "ibmvtpm device is not ready\n");
		return 0;
	}

	if (count > ibmvtpm->rtce_size) {
		FUNC0(ibmvtpm->dev,
			"Invalid size in send: count=%zd, rtce_size=%d\n",
			count, ibmvtpm->rtce_size);
		return -EIO;
	}

	if (ibmvtpm->tpm_processing_cmd) {
		FUNC2(ibmvtpm->dev,
		         "Need to wait for TPM to finish\n");
		/* wait for previous command to finish */
		sig = FUNC7(ibmvtpm->wq, !ibmvtpm->tpm_processing_cmd);
		if (sig)
			return -EINTR;
	}

	FUNC5(&ibmvtpm->rtce_lock);
	ibmvtpm->res_len = 0;
	FUNC4((void *)ibmvtpm->rtce_buf, (void *)buf, count);

	/*
	 * set the processing flag before the Hcall, since we may get the
	 * result (interrupt) before even being able to check rc.
	 */
	ibmvtpm->tpm_processing_cmd = true;

	rc = FUNC3(ibmvtpm->vdev,
			IBMVTPM_VALID_CMD, VTPM_TPM_COMMAND,
			count, ibmvtpm->rtce_dma_handle);
	if (rc != H_SUCCESS) {
		FUNC0(ibmvtpm->dev, "tpm_ibmvtpm_send failed rc=%d\n", rc);
		rc = 0;
		ibmvtpm->tpm_processing_cmd = false;
	} else
		rc = 0;

	FUNC6(&ibmvtpm->rtce_lock);
	return rc;
}