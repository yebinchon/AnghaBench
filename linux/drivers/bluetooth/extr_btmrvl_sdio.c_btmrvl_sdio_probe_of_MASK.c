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
struct device {scalar_t__ of_node; } ;
struct btmrvl_sdio_card {scalar_t__ plt_of_node; struct btmrvl_plt_wake_cfg* plt_wake_cfg; } ;
struct btmrvl_plt_wake_cfg {int irq_bt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  btmrvl_sdio_of_match_table ; 
 int /*<<< orphan*/  btmrvl_wake_irq_bt ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct btmrvl_plt_wake_cfg* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
				struct btmrvl_sdio_card *card)
{
	struct btmrvl_plt_wake_cfg *cfg;
	int ret;

	if (!dev->of_node ||
	    !FUNC6(btmrvl_sdio_of_match_table, dev->of_node)) {
		FUNC1(dev, "sdio device tree data not available\n");
		return -1;
	}

	card->plt_of_node = dev->of_node;

	card->plt_wake_cfg = FUNC2(dev, sizeof(*card->plt_wake_cfg),
					  GFP_KERNEL);
	cfg = card->plt_wake_cfg;
	if (cfg && card->plt_of_node) {
		cfg->irq_bt = FUNC5(card->plt_of_node, 0);
		if (!cfg->irq_bt) {
			FUNC0(dev, "fail to parse irq_bt from device tree\n");
			cfg->irq_bt = -1;
		} else {
			ret = FUNC3(dev, cfg->irq_bt,
					       btmrvl_wake_irq_bt,
					       0, "bt_wake", card);
			if (ret) {
				FUNC0(dev,
					"Failed to request irq_bt %d (%d)\n",
					cfg->irq_bt, ret);
			}
			FUNC4(cfg->irq_bt);
		}
	}

	return 0;
}