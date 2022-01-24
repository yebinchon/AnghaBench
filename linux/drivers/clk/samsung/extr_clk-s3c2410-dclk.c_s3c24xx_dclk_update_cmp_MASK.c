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
struct s3c24xx_dclk {int /*<<< orphan*/  dclk_lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int DCLKCON_DCLK_DIV_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct s3c24xx_dclk *s3c24xx_dclk,
				    int div_shift, int cmp_shift)
{
	unsigned long flags = 0;
	u32 dclk_con, div, cmp;

	FUNC1(&s3c24xx_dclk->dclk_lock, flags);

	dclk_con = FUNC0(s3c24xx_dclk->base);

	div = ((dclk_con >> div_shift) & DCLKCON_DCLK_DIV_MASK) + 1;
	cmp = ((div + 1) / 2) - 1;

	dclk_con &= ~(DCLKCON_DCLK_DIV_MASK << cmp_shift);
	dclk_con |= (cmp << cmp_shift);

	FUNC3(dclk_con, s3c24xx_dclk->base);

	FUNC2(&s3c24xx_dclk->dclk_lock, flags);
}