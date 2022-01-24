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
struct property {int dummy; } ;
struct pci_pbm_info {int /*<<< orphan*/  pci_bus; int /*<<< orphan*/  is_66mhz_capable; TYPE_2__* op; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 struct property* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,struct device*) ; 

__attribute__((used)) static void FUNC2(struct pci_pbm_info *pbm, struct device *parent)
{
	struct property *prop;
	struct device_node *dp;

	dp = pbm->op->dev.of_node;
	prop = FUNC0(dp, "66mhz-capable", NULL);
	pbm->is_66mhz_capable = (prop != NULL);
	pbm->pci_bus = FUNC1(pbm, parent);

	/* XXX register error interrupt handlers XXX */
}