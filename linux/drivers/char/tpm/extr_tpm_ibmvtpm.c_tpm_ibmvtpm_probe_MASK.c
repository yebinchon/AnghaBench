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
struct vio_device_id {int dummy; } ;
struct device {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  unit_address; int /*<<< orphan*/  irq; struct device dev; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct ibmvtpm_crq_queue {int num_entry; struct ibmvtpm_crq* crq_addr; scalar_t__ index; } ;
struct ibmvtpm_dev {int /*<<< orphan*/  crq_dma_handle; int /*<<< orphan*/  rtce_lock; int /*<<< orphan*/  wq; struct ibmvtpm_crq_queue crq_queue; struct vio_dev* vdev; struct device* dev; } ;
struct ibmvtpm_crq {int dummy; } ;

/* Variables and functions */
 int CRQ_RES_BUF_SIZE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_BUSY ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  H_REG_CRQ ; 
 int H_RESOURCE ; 
 scalar_t__ FUNC1 (struct tpm_chip*) ; 
 int FUNC2 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct ibmvtpm_crq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ibmvtpm_dev*) ; 
 int FUNC11 (struct ibmvtpm_dev*) ; 
 int FUNC12 (struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  ibmvtpm_interrupt ; 
 int FUNC13 (struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ibmvtpm_dev*) ; 
 struct ibmvtpm_dev* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct tpm_chip*) ; 
 int /*<<< orphan*/  tpm_ibmvtpm ; 
 int /*<<< orphan*/  tpm_ibmvtpm_driver_name ; 
 struct tpm_chip* FUNC21 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC23(struct vio_dev *vio_dev,
				   const struct vio_device_id *id)
{
	struct ibmvtpm_dev *ibmvtpm;
	struct device *dev = &vio_dev->dev;
	struct ibmvtpm_crq_queue *crq_q;
	struct tpm_chip *chip;
	int rc = -ENOMEM, rc1;

	chip = FUNC21(dev, &tpm_ibmvtpm);
	if (FUNC1(chip))
		return FUNC2(chip);

	ibmvtpm = FUNC16(sizeof(struct ibmvtpm_dev), GFP_KERNEL);
	if (!ibmvtpm) {
		FUNC3(dev, "kzalloc for ibmvtpm failed\n");
		goto cleanup;
	}

	ibmvtpm->dev = dev;
	ibmvtpm->vdev = vio_dev;

	crq_q = &ibmvtpm->crq_queue;
	crq_q->crq_addr = (struct ibmvtpm_crq *)FUNC9(GFP_KERNEL);
	if (!crq_q->crq_addr) {
		FUNC3(dev, "Unable to allocate memory for crq_addr\n");
		goto cleanup;
	}

	crq_q->num_entry = CRQ_RES_BUF_SIZE / sizeof(*crq_q->crq_addr);
	ibmvtpm->crq_dma_handle = FUNC5(dev, crq_q->crq_addr,
						 CRQ_RES_BUF_SIZE,
						 DMA_BIDIRECTIONAL);

	if (FUNC6(dev, ibmvtpm->crq_dma_handle)) {
		FUNC3(dev, "dma mapping failed\n");
		goto cleanup;
	}

	rc = FUNC17(H_REG_CRQ, vio_dev->unit_address,
				ibmvtpm->crq_dma_handle, CRQ_RES_BUF_SIZE);
	if (rc == H_RESOURCE)
		rc = FUNC13(ibmvtpm);

	if (rc) {
		FUNC3(dev, "Unable to register CRQ rc=%d\n", rc);
		goto reg_crq_cleanup;
	}

	rc = FUNC18(vio_dev->irq, ibmvtpm_interrupt, 0,
			 tpm_ibmvtpm_driver_name, ibmvtpm);
	if (rc) {
		FUNC3(dev, "Error %d register irq 0x%x\n", rc, vio_dev->irq);
		goto init_irq_cleanup;
	}

	rc = FUNC22(vio_dev);
	if (rc) {
		FUNC3(dev, "Error %d enabling interrupts\n", rc);
		goto init_irq_cleanup;
	}

	FUNC14(&ibmvtpm->wq);

	crq_q->index = 0;

	FUNC4(&chip->dev, ibmvtpm);

	FUNC19(&ibmvtpm->rtce_lock);

	rc = FUNC12(ibmvtpm);
	if (rc)
		goto init_irq_cleanup;

	rc = FUNC11(ibmvtpm);
	if (rc)
		goto init_irq_cleanup;

	rc = FUNC10(ibmvtpm);
	if (rc)
		goto init_irq_cleanup;

	return FUNC20(chip);
init_irq_cleanup:
	do {
		rc1 = FUNC17(H_FREE_CRQ, vio_dev->unit_address);
	} while (rc1 == H_BUSY || FUNC0(rc1));
reg_crq_cleanup:
	FUNC7(dev, ibmvtpm->crq_dma_handle, CRQ_RES_BUF_SIZE,
			 DMA_BIDIRECTIONAL);
cleanup:
	if (ibmvtpm) {
		if (crq_q->crq_addr)
			FUNC8((unsigned long)crq_q->crq_addr);
		FUNC15(ibmvtpm);
	}

	return rc;
}