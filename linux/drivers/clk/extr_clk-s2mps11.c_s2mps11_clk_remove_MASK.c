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
struct s2mps11_clk {int /*<<< orphan*/  lookup; int /*<<< orphan*/  clk_np; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int S2MPS11_CLKS_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct s2mps11_clk* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct s2mps11_clk *s2mps11_clks = FUNC3(pdev);
	int i;

	FUNC1(s2mps11_clks[0].clk_np);
	/* Drop the reference obtained in s2mps11_clk_parse_dt */
	FUNC2(s2mps11_clks[0].clk_np);

	for (i = 0; i < S2MPS11_CLKS_NUM; i++) {
		/* Skip clocks not present on S2MPS14 */
		if (!s2mps11_clks[i].lookup)
			continue;
		FUNC0(s2mps11_clks[i].lookup);
	}

	return 0;
}