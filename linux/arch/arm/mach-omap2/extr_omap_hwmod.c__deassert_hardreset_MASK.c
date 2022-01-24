#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct omap_hwmod_rst_info {int dummy; } ;
struct omap_hwmod {TYPE_2__* clkdm; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int (* deassert_hardreset ) (struct omap_hwmod*,struct omap_hwmod_rst_info*) ;int /*<<< orphan*/  (* disable_module ) (struct omap_hwmod*) ;int /*<<< orphan*/  (* enable_module ) (struct omap_hwmod*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_hwmod*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hwmod*) ; 
 int FUNC3 (struct omap_hwmod*,char const*,struct omap_hwmod_rst_info*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct omap_hwmod*) ; 
 int FUNC7 (TYPE_2__*,struct omap_hwmod*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ soc_ops ; 
 int /*<<< orphan*/  FUNC9 (struct omap_hwmod*) ; 
 int FUNC10 (struct omap_hwmod*,struct omap_hwmod_rst_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_hwmod*) ; 

__attribute__((used)) static int FUNC12(struct omap_hwmod *oh, const char *name)
{
	struct omap_hwmod_rst_info ohri;
	int ret = -EINVAL;

	if (!oh)
		return -EINVAL;

	if (!soc_ops.deassert_hardreset)
		return -ENOSYS;

	ret = FUNC3(oh, name, &ohri);
	if (ret < 0)
		return ret;

	if (oh->clkdm) {
		/*
		 * A clockdomain must be in SW_SUP otherwise reset
		 * might not be completed. The clockdomain can be set
		 * in HW_AUTO only when the module become ready.
		 */
		FUNC5(oh->clkdm);
		ret = FUNC7(oh->clkdm, oh);
		if (ret) {
			FUNC0(1, "omap_hwmod: %s: could not enable clockdomain %s: %d\n",
			     oh->name, oh->clkdm->name, ret);
			return ret;
		}
	}

	FUNC2(oh);
	if (soc_ops.enable_module)
		soc_ops.enable_module(oh);

	ret = soc_ops.deassert_hardreset(oh, &ohri);

	if (soc_ops.disable_module)
		soc_ops.disable_module(oh);
	FUNC1(oh);

	if (ret == -EBUSY)
		FUNC8("omap_hwmod: %s: failed to hardreset\n", oh->name);

	if (oh->clkdm) {
		/*
		 * Set the clockdomain to HW_AUTO, assuming that the
		 * previous state was HW_AUTO.
		 */
		FUNC4(oh->clkdm);

		FUNC6(oh->clkdm, oh);
	}

	return ret;
}