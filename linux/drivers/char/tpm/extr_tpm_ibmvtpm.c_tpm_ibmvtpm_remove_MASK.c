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
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  unit_address; int /*<<< orphan*/  irq; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ crq_addr; } ;
struct ibmvtpm_dev {struct ibmvtpm_dev* rtce_buf; int /*<<< orphan*/  rtce_size; int /*<<< orphan*/  rtce_dma_handle; int /*<<< orphan*/  dev; TYPE_1__ crq_queue; int /*<<< orphan*/  crq_dma_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRQ_RES_BUF_SIZE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int H_BUSY ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_chip*) ; 

__attribute__((used)) static int FUNC10(struct vio_dev *vdev)
{
	struct tpm_chip *chip = FUNC1(&vdev->dev);
	struct ibmvtpm_dev *ibmvtpm = FUNC1(&chip->dev);
	int rc = 0;

	FUNC9(chip);

	FUNC4(vdev->irq, ibmvtpm);

	do {
		if (rc)
			FUNC7(100);
		rc = FUNC8(H_FREE_CRQ, vdev->unit_address);
	} while (rc == H_BUSY || FUNC0(rc));

	FUNC3(ibmvtpm->dev, ibmvtpm->crq_dma_handle,
			 CRQ_RES_BUF_SIZE, DMA_BIDIRECTIONAL);
	FUNC5((unsigned long)ibmvtpm->crq_queue.crq_addr);

	if (ibmvtpm->rtce_buf) {
		FUNC3(ibmvtpm->dev, ibmvtpm->rtce_dma_handle,
				 ibmvtpm->rtce_size, DMA_BIDIRECTIONAL);
		FUNC6(ibmvtpm->rtce_buf);
	}

	FUNC6(ibmvtpm);
	/* For tpm_ibmvtpm_get_desired_dma */
	FUNC2(&vdev->dev, NULL);

	return 0;
}