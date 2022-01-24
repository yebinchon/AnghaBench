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
struct fe_priv {unsigned long sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_FE_GLO_CFG ; 
 unsigned long FE_US_CYC_CNT_DIVISOR ; 
 unsigned long FE_US_CYC_CNT_MASK ; 
 unsigned long FE_US_CYC_CNT_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

int FUNC2(struct fe_priv *priv)
{
	unsigned long sysclk = priv->sysclk;

	sysclk /= FE_US_CYC_CNT_DIVISOR;
	sysclk <<= FE_US_CYC_CNT_SHIFT;

	FUNC1((FUNC0(FE_FE_GLO_CFG) &
			~(FE_US_CYC_CNT_MASK << FE_US_CYC_CNT_SHIFT)) |
			sysclk,
			FE_FE_GLO_CFG);
	return 0;
}