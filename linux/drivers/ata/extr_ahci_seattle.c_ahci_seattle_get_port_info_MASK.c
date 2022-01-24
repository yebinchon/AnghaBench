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
typedef  int u32 ;
struct seattle_plat_data {int /*<<< orphan*/  sgpio_ctrl; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ata_port_info {int dummy; } ;
struct ahci_host_priv {int em_buf_sz; struct seattle_plat_data* plat_data; int /*<<< orphan*/  em_msg_type; scalar_t__ em_loc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM_MSG_TYPE_LED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_port_info const ahci_port_info ; 
 struct ata_port_info const ahci_port_seattle_info ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 struct seattle_plat_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static const struct ata_port_info *FUNC6(
		struct platform_device *pdev, struct ahci_host_priv *hpriv)
{
	struct device *dev = &pdev->dev;
	struct seattle_plat_data *plat_data;
	u32 val;

	plat_data = FUNC3(dev, sizeof(*plat_data), GFP_KERNEL);
	if (!plat_data)
		return &ahci_port_info;

	plat_data->sgpio_ctrl = FUNC2(dev,
			      FUNC5(pdev, IORESOURCE_MEM, 1));
	if (FUNC0(plat_data->sgpio_ctrl))
		return &ahci_port_info;

	val = FUNC4(plat_data->sgpio_ctrl);

	if (!(val & 0xf))
		return &ahci_port_info;

	hpriv->em_loc = 0;
	hpriv->em_buf_sz = 4;
	hpriv->em_msg_type = EM_MSG_TYPE_LED;
	hpriv->plat_data = plat_data;

	FUNC1(dev, "SGPIO LED control is enabled.\n");
	return &ahci_port_seattle_info;
}