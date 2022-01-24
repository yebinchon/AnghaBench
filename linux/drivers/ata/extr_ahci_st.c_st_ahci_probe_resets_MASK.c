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
struct st_ahci_drv_data {int /*<<< orphan*/ * pwr_rst; int /*<<< orphan*/ * sw_rst; int /*<<< orphan*/ * pwr; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct st_ahci_drv_data* plat_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct ahci_host_priv*,struct device*) ; 

__attribute__((used)) static int FUNC5(struct ahci_host_priv *hpriv,
				struct device *dev)
{
	struct st_ahci_drv_data *drv_data = hpriv->plat_data;

	drv_data->pwr = FUNC3(dev, "pwr-dwn");
	if (FUNC0(drv_data->pwr)) {
		FUNC2(dev, "power reset control not defined\n");
		drv_data->pwr = NULL;
	}

	drv_data->sw_rst = FUNC3(dev, "sw-rst");
	if (FUNC0(drv_data->sw_rst)) {
		FUNC2(dev, "soft reset control not defined\n");
		drv_data->sw_rst = NULL;
	}

	drv_data->pwr_rst = FUNC3(dev, "pwr-rst");
	if (FUNC0(drv_data->pwr_rst)) {
		FUNC1(dev, "power soft reset control not defined\n");
		drv_data->pwr_rst = NULL;
	}

	return FUNC4(hpriv, dev);
}