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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_dfll {scalar_t__ tune_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFLL_FREQ_REQ ; 
 int /*<<< orphan*/  DFLL_FREQ_REQ_FORCE_ENABLE ; 
 int /*<<< orphan*/  DFLL_FREQ_REQ_SCALE_MASK ; 
 scalar_t__ DFLL_TUNE_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dfll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dfll*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tegra_dfll *td)
{
	u32 val;

	/* always tune low (safe) in open loop */
	if (td->tune_range != DFLL_TUNE_LOW)
		FUNC1(td);

	val = FUNC0(td, DFLL_FREQ_REQ);
	val |= DFLL_FREQ_REQ_SCALE_MASK;
	val &= ~DFLL_FREQ_REQ_FORCE_ENABLE;
	FUNC3(td, val, DFLL_FREQ_REQ);
	FUNC2(td);
}