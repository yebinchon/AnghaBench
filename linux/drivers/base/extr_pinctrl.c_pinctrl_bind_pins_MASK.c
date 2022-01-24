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
struct device {TYPE_1__* pins; scalar_t__ of_node_reused; } ;
struct TYPE_3__ {void* p; void* idle_state; void* sleep_state; void* init_state; void* default_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PINCTRL_STATE_DEFAULT ; 
 int /*<<< orphan*/  PINCTRL_STATE_IDLE ; 
 int /*<<< orphan*/  PINCTRL_STATE_INIT ; 
 int /*<<< orphan*/  PINCTRL_STATE_SLEEP ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int FUNC8 (void*,void*) ; 

int FUNC9(struct device *dev)
{
	int ret;

	if (dev->of_node_reused)
		return 0;

	dev->pins = FUNC4(dev, sizeof(*(dev->pins)), GFP_KERNEL);
	if (!dev->pins)
		return -ENOMEM;

	dev->pins->p = FUNC5(dev);
	if (FUNC0(dev->pins->p)) {
		FUNC2(dev, "no pinctrl handle\n");
		ret = FUNC1(dev->pins->p);
		goto cleanup_alloc;
	}

	dev->pins->default_state = FUNC7(dev->pins->p,
					PINCTRL_STATE_DEFAULT);
	if (FUNC0(dev->pins->default_state)) {
		FUNC2(dev, "no default pinctrl state\n");
		ret = 0;
		goto cleanup_get;
	}

	dev->pins->init_state = FUNC7(dev->pins->p,
					PINCTRL_STATE_INIT);
	if (FUNC0(dev->pins->init_state)) {
		/* Not supplying this state is perfectly legal */
		FUNC2(dev, "no init pinctrl state\n");

		ret = FUNC8(dev->pins->p,
					   dev->pins->default_state);
	} else {
		ret = FUNC8(dev->pins->p, dev->pins->init_state);
	}

	if (ret) {
		FUNC2(dev, "failed to activate initial pinctrl state\n");
		goto cleanup_get;
	}

#ifdef CONFIG_PM
	/*
	 * If power management is enabled, we also look for the optional
	 * sleep and idle pin states, with semantics as defined in
	 * <linux/pinctrl/pinctrl-state.h>
	 */
	dev->pins->sleep_state = pinctrl_lookup_state(dev->pins->p,
					PINCTRL_STATE_SLEEP);
	if (IS_ERR(dev->pins->sleep_state))
		/* Not supplying this state is perfectly legal */
		dev_dbg(dev, "no sleep pinctrl state\n");

	dev->pins->idle_state = pinctrl_lookup_state(dev->pins->p,
					PINCTRL_STATE_IDLE);
	if (IS_ERR(dev->pins->idle_state))
		/* Not supplying this state is perfectly legal */
		dev_dbg(dev, "no idle pinctrl state\n");
#endif

	return 0;

	/*
	 * If no pinctrl handle or default state was found for this device,
	 * let's explicitly free the pin container in the device, there is
	 * no point in keeping it around.
	 */
cleanup_get:
	FUNC6(dev->pins->p);
cleanup_alloc:
	FUNC3(dev, dev->pins);
	dev->pins = NULL;

	/* Return deferrals */
	if (ret == -EPROBE_DEFER)
		return ret;
	/* Return serious errors */
	if (ret == -EINVAL)
		return ret;
	/* We ignore errors like -ENOENT meaning no pinctrl state */

	return 0;
}