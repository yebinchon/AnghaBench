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
struct ata_host {int /*<<< orphan*/  lock; scalar_t__* iomap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ NV_INT_STATUS_CK804 ; 
 size_t NV_MMIO_BAR ; 
 int /*<<< orphan*/  FUNC0 (struct ata_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_instance)
{
	struct ata_host *host = dev_instance;
	u8 irq_stat;
	irqreturn_t ret;

	FUNC2(&host->lock);
	irq_stat = FUNC1(host->iomap[NV_MMIO_BAR] + NV_INT_STATUS_CK804);
	ret = FUNC0(host, irq_stat);
	FUNC3(&host->lock);

	return ret;
}