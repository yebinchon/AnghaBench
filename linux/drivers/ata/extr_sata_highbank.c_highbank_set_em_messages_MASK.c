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
struct gpio_desc {int dummy; } ;
struct ecx_plat_data {scalar_t__ post_clocks; scalar_t__ pre_clocks; int /*<<< orphan*/  n_ports; int /*<<< orphan*/  port_to_sgpio; struct gpio_desc** sgpio_gpiod; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct ata_port_info {int flags; } ;
struct ahci_host_priv {int em_buf_sz; int /*<<< orphan*/  em_msg_type; scalar_t__ em_loc; struct ecx_plat_data* plat_data; } ;

/* Variables and functions */
 int ATA_FLAG_EM ; 
 int ATA_FLAG_SW_ACTIVITY ; 
 int /*<<< orphan*/  EM_MSG_TYPE_LED ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int SGPIO_PINS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct gpio_desc* FUNC2 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev,
					struct ahci_host_priv *hpriv,
					struct ata_port_info *pi)
{
	struct device_node *np = dev->of_node;
	struct ecx_plat_data *pdata = hpriv->plat_data;
	int i;

	for (i = 0; i < SGPIO_PINS; i++) {
		struct gpio_desc *gpiod;

		gpiod = FUNC2(dev, "calxeda,sgpio", i,
					     GPIOD_OUT_HIGH);
		if (FUNC0(gpiod)) {
			FUNC1(dev, "failed to get GPIO %d\n", i);
			continue;
		}
		FUNC3(gpiod, "CX SGPIO");

		pdata->sgpio_gpiod[i] = gpiod;
	}
	FUNC5(np, "calxeda,led-order",
						pdata->port_to_sgpio,
						pdata->n_ports);
	if (FUNC4(np, "calxeda,pre-clocks", &pdata->pre_clocks))
		pdata->pre_clocks = 0;
	if (FUNC4(np, "calxeda,post-clocks",
				&pdata->post_clocks))
		pdata->post_clocks = 0;

	/* store em_loc */
	hpriv->em_loc = 0;
	hpriv->em_buf_sz = 4;
	hpriv->em_msg_type = EM_MSG_TYPE_LED;
	pi->flags |= ATA_FLAG_EM | ATA_FLAG_SW_ACTIVITY;
}