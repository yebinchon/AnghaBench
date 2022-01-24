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
struct platform_msi_priv_data {int dummy; } ;
struct device {int /*<<< orphan*/  msi_domain; } ;
typedef  int /*<<< orphan*/  irq_write_msi_msg_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct platform_msi_priv_data*) ; 
 int FUNC1 (struct platform_msi_priv_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct device*,unsigned int) ; 
 int FUNC3 (struct device*,unsigned int,struct platform_msi_priv_data*) ; 
 struct platform_msi_priv_data* FUNC4 (struct device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_msi_priv_data*) ; 

int FUNC7(struct device *dev, unsigned int nvec,
				   irq_write_msi_msg_t write_msi_msg)
{
	struct platform_msi_priv_data *priv_data;
	int err;

	priv_data = FUNC4(dev, nvec, write_msi_msg);
	if (FUNC0(priv_data))
		return FUNC1(priv_data);

	err = FUNC3(dev, nvec, priv_data);
	if (err)
		goto out_free_priv_data;

	err = FUNC2(dev->msi_domain, dev, nvec);
	if (err)
		goto out_free_desc;

	return 0;

out_free_desc:
	FUNC5(dev, 0, nvec);
out_free_priv_data:
	FUNC6(priv_data);

	return err;
}