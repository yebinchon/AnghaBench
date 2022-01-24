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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  color_decorate_slots ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/ * decoration_colors ; 

int FUNC3(const char *var, const char *slot_name, const char *value)
{
	int slot = FUNC0(color_decorate_slots, slot_name);
	if (slot < 0)
		return 0;
	if (!value)
		return FUNC2(var);
	return FUNC1(value, decoration_colors[slot]);
}