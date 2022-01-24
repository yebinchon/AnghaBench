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
struct ata_port {TYPE_1__* host; } ;
struct arasan_cf_dev {int /*<<< orphan*/  dma_status; scalar_t__ vbase; } ;
struct TYPE_2__ {struct arasan_cf_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_ERR ; 
 scalar_t__ XFER_CTR ; 
 int XFER_START ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct arasan_cf_dev*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap)
{
	struct arasan_cf_dev *acdev = ap->host->private_data;

	/* stop transfer and reset controller */
	FUNC4(FUNC3(acdev->vbase + XFER_CTR) & ~XFER_START,
			acdev->vbase + XFER_CTR);
	FUNC2(acdev);
	acdev->dma_status = ATA_DMA_ERR;

	FUNC0(ap);
	FUNC1(ap);
}