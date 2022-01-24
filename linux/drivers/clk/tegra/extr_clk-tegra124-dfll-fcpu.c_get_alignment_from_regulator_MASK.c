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
struct regulator {int dummy; } ;
struct rail_alignment {int /*<<< orphan*/  step_uv; int /*<<< orphan*/  offset_uv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 struct regulator* FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
					 struct rail_alignment *align)
{
	struct regulator *reg = FUNC2(dev, "vdd-cpu");

	if (FUNC0(reg))
		return FUNC1(reg);

	align->offset_uv = FUNC5(reg, 0);
	align->step_uv = FUNC4(reg);

	FUNC3(reg);

	return 0;
}