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
typedef  int /*<<< orphan*/  u8 ;
struct ep93xx_pata_data {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DEV1 ; 
 int /*<<< orphan*/  ATA_DEVICE_OBS ; 
 int /*<<< orphan*/  IDECTRL_ADDR_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_pata_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, unsigned int device)
{
	struct ep93xx_pata_data *drv_data = ap->host->private_data;
	u8 tmp = ATA_DEVICE_OBS;

	if (device != 0)
		tmp |= ATA_DEV1;

	FUNC1(drv_data, tmp, IDECTRL_ADDR_DEVICE);
	FUNC0(ap);	/* needed; also flushes, for mmio */
}