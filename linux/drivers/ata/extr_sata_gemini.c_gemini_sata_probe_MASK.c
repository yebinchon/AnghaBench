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
struct sata_gemini {int ide_pins; int muxmode; int /*<<< orphan*/  sata0_pclk; int /*<<< orphan*/  sata1_pclk; scalar_t__ sata_bridge; struct regmap* base; struct device* dev; } ;
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
typedef  enum gemini_muxmode { ____Placeholder_gemini_muxmode } gemini_muxmode ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GEMINI_GLOBAL_MISC_CTRL ; 
 int GEMINI_IDE_IOMUX_MASK ; 
 int GEMINI_IDE_IOMUX_SHIFT ; 
 int GEMINI_MUXMODE_3 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct regmap* FUNC5 (struct device*,struct resource*) ; 
 struct sata_gemini* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sata_gemini*) ; 
 int FUNC8 (struct device*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 int FUNC10 (struct device_node*,char*,int*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct sata_gemini*) ; 
 int FUNC13 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 struct sata_gemini* sg_singleton ; 
 struct regmap* FUNC14 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct sata_gemini *sg;
	struct regmap *map;
	struct resource *res;
	enum gemini_muxmode muxmode;
	u32 gmode;
	u32 gmask;
	int ret;

	sg = FUNC6(dev, sizeof(*sg), GFP_KERNEL);
	if (!sg)
		return -ENOMEM;
	sg->dev = dev;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	sg->base = FUNC5(dev, res);
	if (FUNC0(sg->base))
		return FUNC1(sg->base);

	map = FUNC14(np, "syscon");
	if (FUNC0(map)) {
		FUNC3(dev, "no global syscon\n");
		return FUNC1(map);
	}

	/* Set up the SATA bridge if need be */
	if (FUNC9(np, "cortina,gemini-enable-sata-bridge")) {
		ret = FUNC7(sg);
		if (ret)
			return ret;
	}

	if (FUNC9(np, "cortina,gemini-enable-ide-pins"))
		sg->ide_pins = true;

	if (!sg->sata_bridge && !sg->ide_pins) {
		FUNC3(dev, "neither SATA bridge or IDE output enabled\n");
		ret = -EINVAL;
		goto out_unprep_clk;
	}

	ret = FUNC10(np, "cortina,gemini-ata-muxmode", &muxmode);
	if (ret) {
		FUNC3(dev, "could not parse ATA muxmode\n");
		goto out_unprep_clk;
	}
	if (muxmode > GEMINI_MUXMODE_3) {
		FUNC3(dev, "illegal muxmode %d\n", muxmode);
		ret = -EINVAL;
		goto out_unprep_clk;
	}
	sg->muxmode = muxmode;
	gmask = GEMINI_IDE_IOMUX_MASK;
	gmode = (muxmode << GEMINI_IDE_IOMUX_SHIFT);

	ret = FUNC13(map, GEMINI_GLOBAL_MISC_CTRL, gmask, gmode);
	if (ret) {
		FUNC3(dev, "unable to set up IDE muxing\n");
		ret = -ENODEV;
		goto out_unprep_clk;
	}

	/*
	 * Route out the IDE pins if desired.
	 * This is done by looking up a special pin control state called
	 * "ide" that will route out the IDE pins.
	 */
	if (sg->ide_pins) {
		ret = FUNC8(dev);
		if (ret)
			return ret;
	}

	FUNC4(dev, "set up the Gemini IDE/SATA nexus\n");
	FUNC12(pdev, sg);
	sg_singleton = sg;

	return 0;

out_unprep_clk:
	if (sg->sata_bridge) {
		FUNC2(sg->sata1_pclk);
		FUNC2(sg->sata0_pclk);
	}
	return ret;
}