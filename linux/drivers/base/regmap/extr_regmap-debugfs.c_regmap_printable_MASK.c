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
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap*,unsigned int) ; 
 scalar_t__ FUNC1 (struct regmap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,unsigned int) ; 

__attribute__((used)) static bool FUNC3(struct regmap *map, unsigned int reg)
{
	if (FUNC1(map, reg))
		return false;

	if (!FUNC2(map, reg) && !FUNC0(map, reg))
		return false;

	return true;
}