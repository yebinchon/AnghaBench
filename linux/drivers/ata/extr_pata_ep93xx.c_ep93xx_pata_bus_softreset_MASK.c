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
struct ep93xx_pata_data {int dummy; } ;
struct ata_port {int ctl; int last_ctl; int /*<<< orphan*/  link; TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;

/* Variables and functions */
 int ATA_SRST ; 
 int /*<<< orphan*/  IDECTRL_ADDR_CTL ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_pata_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ata_port *ap, unsigned int devmask,
				     unsigned long deadline)
{
	struct ep93xx_pata_data *drv_data = ap->host->private_data;

	FUNC1(drv_data, ap->ctl, IDECTRL_ADDR_CTL);
	FUNC2(20);		/* FIXME: flush */
	FUNC1(drv_data, ap->ctl | ATA_SRST, IDECTRL_ADDR_CTL);
	FUNC2(20);		/* FIXME: flush */
	FUNC1(drv_data, ap->ctl, IDECTRL_ADDR_CTL);
	ap->last_ctl = ap->ctl;

	return FUNC0(&ap->link, devmask, deadline);
}