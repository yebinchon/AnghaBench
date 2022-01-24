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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ priv; } ;
struct mtk_rng {TYPE_1__ rng; scalar_t__ base; } ;
struct hwrng {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ RNG_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct hwrng*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct mtk_rng* FUNC5 (struct hwrng*) ; 

__attribute__((used)) static int FUNC6(struct hwrng *rng, void *buf, size_t max, bool wait)
{
	struct mtk_rng *priv = FUNC5(rng);
	int retval = 0;

	FUNC1((struct device *)priv->rng.priv);

	while (max >= sizeof(u32)) {
		if (!FUNC0(rng, wait))
			break;

		*(u32 *)buf = FUNC4(priv->base + RNG_DATA);
		retval += sizeof(u32);
		buf += sizeof(u32);
		max -= sizeof(u32);
	}

	FUNC2((struct device *)priv->rng.priv);
	FUNC3((struct device *)priv->rng.priv);

	return retval || !wait ? retval : -EIO;
}