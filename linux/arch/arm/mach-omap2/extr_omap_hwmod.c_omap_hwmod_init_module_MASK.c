#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ti_sysc_module_data {TYPE_4__* cfg; scalar_t__ name; } ;
struct ti_sysc_cookie {int /*<<< orphan*/  clkdm; struct omap_hwmod* data; } ;
struct sysc_regbits {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_1__ omap4; } ;
struct omap_hwmod {int /*<<< orphan*/  flags; TYPE_3__* class; TYPE_2__ prcm; int /*<<< orphan*/  hwmod_key; int /*<<< orphan*/  _state; scalar_t__ name; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_8__ {int quirks; } ;
struct TYPE_7__ {scalar_t__ name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWMOD_INIT_NO_IDLE ; 
 int /*<<< orphan*/  HWMOD_INIT_NO_RESET ; 
 int /*<<< orphan*/  HWMOD_NO_IDLE ; 
 int /*<<< orphan*/  HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT ; 
 int /*<<< orphan*/  HWMOD_SET_DEFAULT_CLOCKACT ; 
 int /*<<< orphan*/  HWMOD_SWSUP_MSTANDBY ; 
 int /*<<< orphan*/  HWMOD_SWSUP_SIDLE ; 
 int /*<<< orphan*/  HWMOD_SWSUP_SIDLE_ACT ; 
 int SYSC_QUIRK_NO_IDLE ; 
 int SYSC_QUIRK_NO_IDLE_ON_INIT ; 
 int SYSC_QUIRK_NO_RESET_ON_INIT ; 
 int SYSC_QUIRK_SWSUP_MSTANDBY ; 
 int SYSC_QUIRK_SWSUP_SIDLE ; 
 int SYSC_QUIRK_SWSUP_SIDLE_ACT ; 
 int SYSC_QUIRK_USE_CLOCKACT ; 
 int /*<<< orphan*/  _HWMOD_STATE_UNKNOWN ; 
 struct omap_hwmod* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct omap_hwmod*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hwmod*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,struct omap_hwmod*,struct ti_sysc_module_data const*,struct sysc_regbits*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,struct omap_hwmod*,struct ti_sysc_module_data const*,struct sysc_regbits*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,struct ti_sysc_module_data const*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device*,struct ti_sysc_module_data const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device*,struct ti_sysc_module_data const*,struct sysc_regbits**) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct omap_hwmod*,struct ti_sysc_module_data const*) ; 
 int FUNC13 (struct device*,struct ti_sysc_module_data const*,int /*<<< orphan*/ *) ; 

int FUNC14(struct device *dev,
			   const struct ti_sysc_module_data *data,
			   struct ti_sysc_cookie *cookie)
{
	struct omap_hwmod *oh;
	struct sysc_regbits *sysc_fields;
	s32 rev_offs, sysc_offs, syss_offs;
	u32 sysc_flags, idlemodes;
	int error;

	if (!dev || !data || !data->name || !cookie)
		return -EINVAL;

	oh = FUNC0(data->name);
	if (!oh) {
		oh = FUNC3(sizeof(*oh), GFP_KERNEL);
		if (!oh)
			return -ENOMEM;

		oh->name = data->name;
		oh->_state = _HWMOD_STATE_UNKNOWN;
		FUNC4(&oh->hwmod_key);

		/* Unused, can be handled by PRM driver handling resets */
		oh->prcm.omap4.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT;

		oh->class = FUNC3(sizeof(*oh->class), GFP_KERNEL);
		if (!oh->class) {
			FUNC2(oh);
			return -ENOMEM;
		}

		FUNC12(dev, oh, data);

		oh->class->name = data->name;
		FUNC5(&list_lock);
		error = FUNC1(oh);
		FUNC6(&list_lock);
	}

	cookie->data = oh;

	error = FUNC11(dev, data, &sysc_fields);
	if (error)
		return error;

	error = FUNC10(dev, data, &rev_offs,
					 &sysc_offs, &syss_offs);
	if (error)
		return error;

	error = FUNC13(dev, data, &sysc_flags);
	if (error)
		return error;

	error = FUNC9(dev, data, &idlemodes);
	if (error)
		return error;

	if (data->cfg->quirks & SYSC_QUIRK_NO_IDLE)
		oh->flags |= HWMOD_NO_IDLE;
	if (data->cfg->quirks & SYSC_QUIRK_NO_IDLE_ON_INIT)
		oh->flags |= HWMOD_INIT_NO_IDLE;
	if (data->cfg->quirks & SYSC_QUIRK_NO_RESET_ON_INIT)
		oh->flags |= HWMOD_INIT_NO_RESET;
	if (data->cfg->quirks & SYSC_QUIRK_USE_CLOCKACT)
		oh->flags |= HWMOD_SET_DEFAULT_CLOCKACT;
	if (data->cfg->quirks & SYSC_QUIRK_SWSUP_SIDLE)
		oh->flags |= HWMOD_SWSUP_SIDLE;
	if (data->cfg->quirks & SYSC_QUIRK_SWSUP_SIDLE_ACT)
		oh->flags |= HWMOD_SWSUP_SIDLE_ACT;
	if (data->cfg->quirks & SYSC_QUIRK_SWSUP_MSTANDBY)
		oh->flags |= HWMOD_SWSUP_MSTANDBY;

	error = FUNC8(dev, oh, data, sysc_fields,
					rev_offs, sysc_offs, syss_offs,
					sysc_flags, idlemodes);
	if (!error)
		return error;

	return FUNC7(dev, oh, data, sysc_fields,
					  cookie->clkdm, rev_offs,
					  sysc_offs, syss_offs,
					  sysc_flags, idlemodes);
}