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
struct mstp_clock {int index; struct cpg_mssr_priv* priv; } ;
struct device {int dummy; } ;
struct cpg_mssr_priv {scalar_t__ base; scalar_t__ stbyctrl; int /*<<< orphan*/  rmw_lock; struct device* dev; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,unsigned int,unsigned int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,scalar_t__,unsigned int) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mstp_clock* FUNC12 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct clk_hw *hw, bool enable)
{
	struct mstp_clock *clock = FUNC12(hw);
	struct cpg_mssr_priv *priv = clock->priv;
	unsigned int reg = clock->index / 32;
	unsigned int bit = clock->index % 32;
	struct device *dev = priv->dev;
	u32 bitmask = FUNC0(bit);
	unsigned long flags;
	unsigned int i;
	u32 value;

	FUNC6(dev, "MSTP %u%02u/%pC %s\n", reg, bit, hw->clk,
		enable ? "ON" : "OFF");
	FUNC10(&priv->rmw_lock, flags);

	if (priv->stbyctrl) {
		value = FUNC8(priv->base + FUNC3(reg));
		if (enable)
			value &= ~bitmask;
		else
			value |= bitmask;
		FUNC13(value, priv->base + FUNC3(reg));

		/* dummy read to ensure write has completed */
		FUNC8(priv->base + FUNC3(reg));
		FUNC4(priv->base + FUNC3(reg));
	} else {
		value = FUNC9(priv->base + FUNC2(reg));
		if (enable)
			value &= ~bitmask;
		else
			value |= bitmask;
		FUNC14(value, priv->base + FUNC2(reg));
	}

	FUNC11(&priv->rmw_lock, flags);

	if (!enable || priv->stbyctrl)
		return 0;

	for (i = 1000; i > 0; --i) {
		if (!(FUNC9(priv->base + FUNC1(reg)) & bitmask))
			break;
		FUNC5();
	}

	if (!i) {
		FUNC7(dev, "Failed to enable SMSTP %p[%d]\n",
			priv->base + FUNC2(reg), bit);
		return -ETIMEDOUT;
	}

	return 0;
}