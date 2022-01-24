#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct krait_mux_clk {TYPE_1__ clk_nb; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  krait_notifier_cb ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct clk *clk,
				   struct krait_mux_clk *mux)
{
	int ret = 0;

	mux->clk_nb.notifier_call = krait_notifier_cb;
	ret = FUNC0(clk, &mux->clk_nb);
	if (ret)
		FUNC1(dev, "failed to register clock notifier: %d\n", ret);

	return ret;
}