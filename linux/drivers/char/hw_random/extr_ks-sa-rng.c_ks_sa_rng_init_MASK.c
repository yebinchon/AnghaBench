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
typedef  int u32 ;
struct ks_sa_rng {TYPE_1__* reg_rng; int /*<<< orphan*/  regmap_cfg; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  intmask; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_CMD_STATUS_OFS ; 
 int /*<<< orphan*/  SA_CMD_STATUS_REG_TRNG_ENABLE ; 
 int TRNG_CFG_REG_MAX_REFILL_CYCLES_SHIFT ; 
 int TRNG_CFG_REG_MIN_REFILL_CYCLES_SHIFT ; 
 int TRNG_CFG_REG_SAMPLE_DIV_SHIFT ; 
 int TRNG_CNTL_REG_STARTUP_CYCLES_SHIFT ; 
 int TRNG_CNTL_REG_TRNG_ENABLE ; 
 int TRNG_DEF_CLK_DIV_CYCLES ; 
 int TRNG_DEF_MAX_REFILL_CYCLES ; 
 int TRNG_DEF_MIN_REFILL_CYCLES ; 
 int TRNG_DEF_STARTUP_CYCLES ; 
 struct ks_sa_rng* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hwrng *rng)
{
	u32 value;
	struct device *dev = (struct device *)rng->priv;
	struct ks_sa_rng *ks_sa_rng = FUNC0(dev);

	/* Enable RNG module */
	FUNC2(ks_sa_rng->regmap_cfg, SA_CMD_STATUS_OFS,
			  SA_CMD_STATUS_REG_TRNG_ENABLE,
			  SA_CMD_STATUS_REG_TRNG_ENABLE);

	/* Configure RNG module */
	FUNC3(0, &ks_sa_rng->reg_rng->control);
	value = TRNG_DEF_STARTUP_CYCLES << TRNG_CNTL_REG_STARTUP_CYCLES_SHIFT;
	FUNC3(value, &ks_sa_rng->reg_rng->control);

	value =	(TRNG_DEF_MIN_REFILL_CYCLES <<
		 TRNG_CFG_REG_MIN_REFILL_CYCLES_SHIFT) |
		(TRNG_DEF_MAX_REFILL_CYCLES <<
		 TRNG_CFG_REG_MAX_REFILL_CYCLES_SHIFT) |
		(TRNG_DEF_CLK_DIV_CYCLES <<
		 TRNG_CFG_REG_SAMPLE_DIV_SHIFT);

	FUNC3(value, &ks_sa_rng->reg_rng->config);

	/* Disable all interrupts from TRNG */
	FUNC3(0, &ks_sa_rng->reg_rng->intmask);

	/* Enable RNG */
	value = FUNC1(&ks_sa_rng->reg_rng->control);
	value |= TRNG_CNTL_REG_TRNG_ENABLE;
	FUNC3(value, &ks_sa_rng->reg_rng->control);

	return 0;
}