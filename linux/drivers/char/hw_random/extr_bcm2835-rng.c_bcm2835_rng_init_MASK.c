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
typedef  int /*<<< orphan*/  u32 ;
struct hwrng {int dummy; } ;
struct bcm2835_rng_priv {scalar_t__ mask_interrupts; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RNG_CTRL ; 
 int /*<<< orphan*/  RNG_INT_MASK ; 
 int /*<<< orphan*/  RNG_INT_OFF ; 
 int /*<<< orphan*/  RNG_RBGEN ; 
 int /*<<< orphan*/  RNG_STATUS ; 
 int /*<<< orphan*/  RNG_WARMUP_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_rng_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_rng_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm2835_rng_priv* FUNC4 (struct hwrng*) ; 

__attribute__((used)) static int FUNC5(struct hwrng *rng)
{
	struct bcm2835_rng_priv *priv = FUNC4(rng);
	int ret = 0;
	u32 val;

	if (!FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		if (ret)
			return ret;
	}

	if (priv->mask_interrupts) {
		/* mask the interrupt */
		val = FUNC2(priv, RNG_INT_MASK);
		val |= RNG_INT_OFF;
		FUNC3(priv, val, RNG_INT_MASK);
	}

	/* set warm-up count & enable */
	FUNC3(priv, RNG_WARMUP_COUNT, RNG_STATUS);
	FUNC3(priv, RNG_RBGEN, RNG_CTRL);

	return ret;
}