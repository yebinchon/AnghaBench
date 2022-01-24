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
struct ccu_sdm_internal {int enable; int tuning_enable; scalar_t__ tuning_reg; } ;
struct ccu_common {int features; scalar_t__ base; scalar_t__ reg; } ;

/* Variables and functions */
 int CCU_FEATURE_SIGMA_DELTA_MOD ; 
 int FUNC0 (scalar_t__) ; 

bool FUNC1(struct ccu_common *common,
			       struct ccu_sdm_internal *sdm)
{
	if (!(common->features & CCU_FEATURE_SIGMA_DELTA_MOD))
		return false;

	if (sdm->enable && !(FUNC0(common->base + common->reg) & sdm->enable))
		return false;

	return !!(FUNC0(common->base + sdm->tuning_reg) & sdm->tuning_enable);
}