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
typedef  int /*<<< orphan*/  u32 ;
struct s3c_ide_info {scalar_t__ ide_addr; } ;
struct ata_host {struct s3c_ide_info* private_data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ S3C_ATA_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_instance)
{
	struct ata_host *host = dev_instance;
	struct s3c_ide_info *info = host->private_data;
	u32 reg;

	reg = FUNC1(info->ide_addr + S3C_ATA_IRQ);
	FUNC2(reg, info->ide_addr + S3C_ATA_IRQ);

	return FUNC0(irq, dev_instance);
}