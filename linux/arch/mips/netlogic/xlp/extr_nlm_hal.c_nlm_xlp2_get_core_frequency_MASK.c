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
typedef  unsigned long long uint64_t ;
struct TYPE_2__ {unsigned long long sysbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,unsigned int) ; 
 unsigned long long FUNC6 (int) ; 
 TYPE_1__* FUNC7 (int) ; 
 unsigned int FUNC8 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC9(int node, int core)
{
	unsigned int pll_post_div, ctrl_val0, ctrl_val1, denom;
	uint64_t num, sysbase, clockbase;

	if (FUNC4()) {
		clockbase = FUNC6(node);
		ctrl_val0 = FUNC8(clockbase,
					FUNC0(core));
		ctrl_val1 = FUNC8(clockbase,
					FUNC1(core));
	} else {
		sysbase = FUNC7(node)->sysbase;
		ctrl_val0 = FUNC8(sysbase,
						FUNC2(core));
		ctrl_val1 = FUNC8(sysbase,
						FUNC3(core));
	}

	/* Find PLL post divider value */
	switch ((ctrl_val0 >> 24) & 0x7) {
	case 1:
		pll_post_div = 2;
		break;
	case 3:
		pll_post_div = 4;
		break;
	case 7:
		pll_post_div = 8;
		break;
	case 6:
		pll_post_div = 16;
		break;
	case 0:
	default:
		pll_post_div = 1;
		break;
	}

	num = 1000000ULL * (400 * 3 + 100 * (ctrl_val1 & 0x3f));
	denom = 3 * pll_post_div;
	FUNC5(num, denom);

	return (unsigned int)num;
}