#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,unsigned int,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct ata_link *link, unsigned int sc_reg)
{
	struct pci_dev *pdev = FUNC2(link->ap->host->dev);
	unsigned int cfg_addr = FUNC0(link->ap, sc_reg);
	u32 val;

	FUNC1(pdev, cfg_addr, &val);
	return val;
}