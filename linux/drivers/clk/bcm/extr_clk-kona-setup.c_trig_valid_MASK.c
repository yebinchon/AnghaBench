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
struct bcm_clk_trig {int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static bool FUNC1(struct bcm_clk_trig *trig, const char *field_name,
			const char *clock_name)
{
	return FUNC0(trig->bit, field_name, clock_name);
}