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
struct bcm_clk_gate {int /*<<< orphan*/  hw_sw_sel_bit; int /*<<< orphan*/  en_bit; int /*<<< orphan*/  status_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (struct bcm_clk_gate*) ; 
 scalar_t__ FUNC3 (struct bcm_clk_gate*) ; 

__attribute__((used)) static bool FUNC4(struct bcm_clk_gate *gate, const char *field_name,
			const char *clock_name)
{
	if (!FUNC1(gate->status_bit, "gate status", clock_name))
		return false;

	if (FUNC3(gate)) {
		if (!FUNC1(gate->en_bit, "gate enable", clock_name))
			return false;

		if (FUNC2(gate)) {
			if (!FUNC1(gate->hw_sw_sel_bit,
						"gate hw/sw select",
						clock_name))
				return false;
		}
	} else {
		FUNC0(!FUNC2(gate));
	}

	return true;
}