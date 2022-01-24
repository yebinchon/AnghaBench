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
struct platform_device {int dummy; } ;
struct mcs814x_rng_priv {scalar_t__ priv; } ;
struct hwrng {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcs814x_rng_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mcs814x_rng_priv*) ; 
 struct mcs814x_rng_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct hwrng *rng = FUNC2(pdev);
	struct mcs814x_rng_priv *priv = (struct mcs814x_rng_priv *)rng->priv;

	FUNC0(rng);
	FUNC1(priv);
	FUNC1(rng);
	FUNC3(pdev, NULL);

	return 0;
}