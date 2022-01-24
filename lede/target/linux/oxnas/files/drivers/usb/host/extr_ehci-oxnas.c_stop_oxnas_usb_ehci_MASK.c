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
struct oxnas_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/  refsrc; int /*<<< orphan*/  phyref; scalar_t__ use_pllb; int /*<<< orphan*/  rst_phyb; int /*<<< orphan*/  rst_phya; int /*<<< orphan*/  rst_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct oxnas_hcd *oxnas)
{
	FUNC1(oxnas->rst_host);
	FUNC1(oxnas->rst_phya);
	FUNC1(oxnas->rst_phyb);

	if (oxnas->use_pllb) {
		FUNC0(oxnas->phyref);
		FUNC0(oxnas->refsrc);
	}
	FUNC0(oxnas->clk);
}