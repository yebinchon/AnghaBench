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
struct platform_msi_priv_data {int /*<<< orphan*/  arg; void* host_data; } ;
struct irq_domain_ops {int dummy; } ;
struct irq_domain {int /*<<< orphan*/  parent; } ;
struct device {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  msi_domain; } ;
typedef  int /*<<< orphan*/  irq_write_msi_msg_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct platform_msi_priv_data*) ; 
 struct irq_domain* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct irq_domain_ops const*,struct platform_msi_priv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct device*,unsigned int,int /*<<< orphan*/ *) ; 
 struct platform_msi_priv_data* FUNC4 (struct device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_msi_priv_data*) ; 

struct irq_domain *
FUNC6(struct device *dev,
				    unsigned int nvec,
				    bool is_tree,
				    irq_write_msi_msg_t write_msi_msg,
				    const struct irq_domain_ops *ops,
				    void *host_data)
{
	struct platform_msi_priv_data *data;
	struct irq_domain *domain;
	int err;

	data = FUNC4(dev, nvec, write_msi_msg);
	if (FUNC0(data))
		return NULL;

	data->host_data = host_data;
	domain = FUNC1(dev->msi_domain, 0,
					     is_tree ? 0 : nvec,
					     dev->fwnode, ops, data);
	if (!domain)
		goto free_priv;

	err = FUNC3(domain->parent, dev, nvec, &data->arg);
	if (err)
		goto free_domain;

	return domain;

free_domain:
	FUNC2(domain);
free_priv:
	FUNC5(data);
	return NULL;
}