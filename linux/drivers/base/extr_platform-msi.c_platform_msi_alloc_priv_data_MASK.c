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
struct platform_msi_priv_data {scalar_t__ devid; struct device* dev; scalar_t__ write_msg; } ;
struct device {TYPE_1__* msi_domain; } ;
typedef  scalar_t__ irq_write_msi_msg_t ;
struct TYPE_2__ {scalar_t__ bus_token; } ;

/* Variables and functions */
 int DEV_ID_SHIFT ; 
 scalar_t__ DOMAIN_BUS_PLATFORM_MSI ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct platform_msi_priv_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_DEV_MSIS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_msi_priv_data*) ; 
 struct platform_msi_priv_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_msi_devid_ida ; 

__attribute__((used)) static struct platform_msi_priv_data *
FUNC7(struct device *dev, unsigned int nvec,
			     irq_write_msi_msg_t write_msi_msg)
{
	struct platform_msi_priv_data *datap;
	/*
	 * Limit the number of interrupts to 2048 per device. Should we
	 * need to bump this up, DEV_ID_SHIFT should be adjusted
	 * accordingly (which would impact the max number of MSI
	 * capable devices).
	 */
	if (!dev->msi_domain || !write_msi_msg || !nvec || nvec > MAX_DEV_MSIS)
		return FUNC0(-EINVAL);

	if (dev->msi_domain->bus_token != DOMAIN_BUS_PLATFORM_MSI) {
		FUNC1(dev, "Incompatible msi_domain, giving up\n");
		return FUNC0(-EINVAL);
	}

	/* Already had a helping of MSI? Greed... */
	if (!FUNC6(FUNC2(dev)))
		return FUNC0(-EBUSY);

	datap = FUNC5(sizeof(*datap), GFP_KERNEL);
	if (!datap)
		return FUNC0(-ENOMEM);

	datap->devid = FUNC3(&platform_msi_devid_ida,
				      0, 1 << DEV_ID_SHIFT, GFP_KERNEL);
	if (datap->devid < 0) {
		int err = datap->devid;
		FUNC4(datap);
		return FUNC0(err);
	}

	datap->write_msg = write_msi_msg;
	datap->dev = dev;

	return datap;
}