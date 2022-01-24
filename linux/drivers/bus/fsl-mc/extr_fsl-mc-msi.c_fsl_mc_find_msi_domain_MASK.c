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
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_FSL_MC_MSI ; 
 int ENOENT ; 
 struct irq_domain* FUNC0 (struct device*,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct device_node*) ; 

int FUNC2(struct device *mc_platform_dev,
			   struct irq_domain **mc_msi_domain)
{
	struct irq_domain *msi_domain;
	struct device_node *mc_of_node = mc_platform_dev->of_node;

	msi_domain = FUNC0(mc_platform_dev, mc_of_node,
				       DOMAIN_BUS_FSL_MC_MSI);
	if (!msi_domain) {
		FUNC1("Unable to find fsl-mc MSI domain for %pOF\n",
		       mc_of_node);

		return -ENOENT;
	}

	*mc_msi_domain = msi_domain;
	return 0;
}