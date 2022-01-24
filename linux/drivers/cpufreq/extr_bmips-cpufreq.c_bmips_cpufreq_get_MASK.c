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
typedef  unsigned int uint32_t ;
struct TYPE_2__ {int bmips_type; int /*<<< orphan*/  clk_mult; } ;

/* Variables and functions */
#define  BMIPS5000 129 
#define  BMIPS5200 128 
 unsigned int BMIPS5_CLK_DIV_MASK ; 
 unsigned int BMIPS5_CLK_DIV_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* priv ; 
 unsigned int FUNC1 () ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int cpu)
{
	unsigned int div;
	uint32_t mode;

	switch (priv->bmips_type) {
	case BMIPS5200:
	case BMIPS5000:
		mode = FUNC1();
		div = ((mode >> BMIPS5_CLK_DIV_SHIFT) & BMIPS5_CLK_DIV_MASK);
		break;
	default:
		div = 0;
	}

	return FUNC0(priv->clk_mult) / (1 << div);
}