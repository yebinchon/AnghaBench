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
struct st_ahci_drv_data {scalar_t__ pwr_rst; scalar_t__ sw_rst; scalar_t__ pwr; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct st_ahci_drv_data* plat_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ahci_host_priv *hpriv,
				struct device *dev)
{
	struct st_ahci_drv_data *drv_data = hpriv->plat_data;
	int err;

	if (drv_data->pwr) {
		err = FUNC1(drv_data->pwr);
		if (err) {
			FUNC0(dev, "unable to bring out of pwrdwn\n");
			return err;
		}
	}

	if (drv_data->sw_rst) {
		err = FUNC1(drv_data->sw_rst);
		if (err) {
			FUNC0(dev, "unable to bring out of sw-rst\n");
			return err;
		}
	}

	if (drv_data->pwr_rst) {
		err = FUNC1(drv_data->pwr_rst);
		if (err) {
			FUNC0(dev, "unable to bring out of pwr-rst\n");
			return err;
		}
	}

	return 0;
}