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
struct mtk_rng {scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 scalar_t__ RNG_CTRL ; 
 int /*<<< orphan*/  RNG_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mtk_rng* FUNC2 (struct hwrng*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct hwrng *rng)
{
	struct mtk_rng *priv = FUNC2(rng);
	u32 val;
	int err;

	err = FUNC0(priv->clk);
	if (err)
		return err;

	val = FUNC1(priv->base + RNG_CTRL);
	val |= RNG_EN;
	FUNC3(val, priv->base + RNG_CTRL);

	return 0;
}