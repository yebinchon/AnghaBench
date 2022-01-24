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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cmd640_reg {int last; } ;
struct ata_port {struct cmd640_reg* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cmd640_reg* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC1(ap->host->dev);
	struct cmd640_reg *timing;

	timing = FUNC0(&pdev->dev, sizeof(struct cmd640_reg), GFP_KERNEL);
	if (timing == NULL)
		return -ENOMEM;
	timing->last = -1;	/* Force a load */
	ap->private_data = timing;
	return 0;
}