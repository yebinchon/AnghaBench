#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tegra_gmi {int /*<<< orphan*/  snor_timing1; int /*<<< orphan*/  snor_timing0; int /*<<< orphan*/  snor_config; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  TEGRA_GMI_ADV_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEGRA_GMI_BUS_WIDTH_32BIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TEGRA_GMI_CS_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TEGRA_GMI_MAX_CHIP_SELECT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TEGRA_GMI_MUX_MODE ; 
 int /*<<< orphan*/  TEGRA_GMI_OE_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  TEGRA_GMI_RDY_ACTIVE_HIGH ; 
 int /*<<< orphan*/  TEGRA_GMI_RDY_BEFORE_DATA ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*) ; 
 int FUNC14 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC15 (struct device_node*,char*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC16(struct tegra_gmi *gmi)
{
	struct device_node *child;
	u32 property, ranges[4];
	int err;

	child = FUNC11(gmi->dev->of_node, NULL);
	if (!child) {
		FUNC8(gmi->dev, "no child nodes found\n");
		return -ENODEV;
	}

	/*
	 * We currently only support one child device due to lack of
	 * chip-select address decoding. Which means that we only have one
	 * chip-select line from the GMI controller.
	 */
	if (FUNC10(gmi->dev->of_node) > 1)
		FUNC9(gmi->dev, "only one child device is supported.");

	if (FUNC13(child, "nvidia,snor-data-width-32bit"))
		gmi->snor_config |= TEGRA_GMI_BUS_WIDTH_32BIT;

	if (FUNC13(child, "nvidia,snor-mux-mode"))
		gmi->snor_config |= TEGRA_GMI_MUX_MODE;

	if (FUNC13(child, "nvidia,snor-rdy-active-before-data"))
		gmi->snor_config |= TEGRA_GMI_RDY_BEFORE_DATA;

	if (FUNC13(child, "nvidia,snor-rdy-active-high"))
		gmi->snor_config |= TEGRA_GMI_RDY_ACTIVE_HIGH;

	if (FUNC13(child, "nvidia,snor-adv-active-high"))
		gmi->snor_config |= TEGRA_GMI_ADV_ACTIVE_HIGH;

	if (FUNC13(child, "nvidia,snor-oe-active-high"))
		gmi->snor_config |= TEGRA_GMI_OE_ACTIVE_HIGH;

	if (FUNC13(child, "nvidia,snor-cs-active-high"))
		gmi->snor_config |= TEGRA_GMI_CS_ACTIVE_HIGH;

	/* Decode the CS# */
	err = FUNC15(child, "ranges", ranges, 4);
	if (err < 0) {
		/* Invalid binding */
		if (err == -EOVERFLOW) {
			FUNC8(gmi->dev,
				"failed to decode CS: invalid ranges length\n");
			goto error_cs;
		}

		/*
		 * If we reach here it means that the child node has an empty
		 * ranges or it does not exist at all. Attempt to decode the
		 * CS# from the reg property instead.
		 */
		err = FUNC14(child, "reg", &property);
		if (err < 0) {
			FUNC8(gmi->dev,
				"failed to decode CS: no reg property found\n");
			goto error_cs;
		}
	} else {
		property = ranges[1];
	}

	/* Valid chip selects are CS0-CS7 */
	if (property >= TEGRA_GMI_MAX_CHIP_SELECT) {
		FUNC8(gmi->dev, "invalid chip select: %d", property);
		err = -EINVAL;
		goto error_cs;
	}

	gmi->snor_config |= FUNC2(property);

	/* The default values that are provided below are reset values */
	if (!FUNC14(child, "nvidia,snor-muxed-width", &property))
		gmi->snor_timing0 |= FUNC4(property);
	else
		gmi->snor_timing0 |= FUNC4(1);

	if (!FUNC14(child, "nvidia,snor-hold-width", &property))
		gmi->snor_timing0 |= FUNC3(property);
	else
		gmi->snor_timing0 |= FUNC3(1);

	if (!FUNC14(child, "nvidia,snor-adv-width", &property))
		gmi->snor_timing0 |= FUNC0(property);
	else
		gmi->snor_timing0 |= FUNC0(1);

	if (!FUNC14(child, "nvidia,snor-ce-width", &property))
		gmi->snor_timing0 |= FUNC1(property);
	else
		gmi->snor_timing0 |= FUNC1(4);

	if (!FUNC14(child, "nvidia,snor-we-width", &property))
		gmi->snor_timing1 |= FUNC7(property);
	else
		gmi->snor_timing1 |= FUNC7(1);

	if (!FUNC14(child, "nvidia,snor-oe-width", &property))
		gmi->snor_timing1 |= FUNC5(property);
	else
		gmi->snor_timing1 |= FUNC5(1);

	if (!FUNC14(child, "nvidia,snor-wait-width", &property))
		gmi->snor_timing1 |= FUNC6(property);
	else
		gmi->snor_timing1 |= FUNC6(3);

error_cs:
	FUNC12(child);
	return err;
}