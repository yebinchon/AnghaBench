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
struct mtk_ahci_plat {void* axi_rst; void* sw_rst; void* reg_rst; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct mtk_ahci_plat* plat_data; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 void* FUNC2 (struct device*,char*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct ahci_host_priv *hpriv,
				    struct device *dev)
{
	struct mtk_ahci_plat *plat = hpriv->plat_data;
	int err;

	/* reset AXI bus and PHY part */
	plat->axi_rst = FUNC2(dev, "axi");
	if (FUNC0(plat->axi_rst) == -EPROBE_DEFER)
		return FUNC0(plat->axi_rst);

	plat->sw_rst = FUNC2(dev, "sw");
	if (FUNC0(plat->sw_rst) == -EPROBE_DEFER)
		return FUNC0(plat->sw_rst);

	plat->reg_rst = FUNC2(dev, "reg");
	if (FUNC0(plat->reg_rst) == -EPROBE_DEFER)
		return FUNC0(plat->reg_rst);

	err = FUNC3(plat->axi_rst);
	if (err) {
		FUNC1(dev, "failed to assert AXI bus\n");
		return err;
	}

	err = FUNC3(plat->sw_rst);
	if (err) {
		FUNC1(dev, "failed to assert PHY digital part\n");
		return err;
	}

	err = FUNC3(plat->reg_rst);
	if (err) {
		FUNC1(dev, "failed to assert PHY register part\n");
		return err;
	}

	err = FUNC4(plat->reg_rst);
	if (err) {
		FUNC1(dev, "failed to deassert PHY register part\n");
		return err;
	}

	err = FUNC4(plat->sw_rst);
	if (err) {
		FUNC1(dev, "failed to deassert PHY digital part\n");
		return err;
	}

	err = FUNC4(plat->axi_rst);
	if (err) {
		FUNC1(dev, "failed to deassert AXI bus\n");
		return err;
	}

	return 0;
}