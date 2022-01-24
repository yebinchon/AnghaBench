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
struct hwrng {int dummy; } ;
struct bcm2835_rng_priv {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RNG_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_rng_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm2835_rng_priv* FUNC3 (struct hwrng*) ; 

__attribute__((used)) static void FUNC4(struct hwrng *rng)
{
	struct bcm2835_rng_priv *priv = FUNC3(rng);

	/* disable rng hardware */
	FUNC2(priv, 0, RNG_CTRL);

	if (!FUNC0(priv->clk))
		FUNC1(priv->clk);
}