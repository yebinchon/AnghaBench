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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct irq_domain* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct irq_domain*,struct device*,unsigned int) ; 

int FUNC7(struct device *dev,
				 unsigned int irq_count)
{
	struct irq_domain *msi_domain;
	int error;

	if (!FUNC5(FUNC2(dev)))
		return -EINVAL;

	error = FUNC3(dev, irq_count);
	if (error < 0)
		return error;

	msi_domain = FUNC1(dev);
	if (!msi_domain) {
		error = -EINVAL;
		goto cleanup_msi_descs;
	}

	/*
	 * NOTE: Calling this function will trigger the invocation of the
	 * its_fsl_mc_msi_prepare() callback
	 */
	error = FUNC6(msi_domain, dev, irq_count);

	if (error) {
		FUNC0(dev, "Failed to allocate IRQs\n");
		goto cleanup_msi_descs;
	}

	return 0;

cleanup_msi_descs:
	FUNC4(dev);
	return error;
}