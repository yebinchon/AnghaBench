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
struct omap_rng_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNG_STATUS_REG ; 
 scalar_t__ FUNC0 (struct omap_rng_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(struct omap_rng_dev *priv)
{
	return FUNC0(priv, RNG_STATUS_REG) ? 0 : 1;
}