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
 scalar_t__ FUNC0 (struct regmap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,scalar_t__) ; 

__attribute__((used)) static bool FUNC2(struct regmap *map, unsigned int reg,
	size_t num)
{
	unsigned int i;

	for (i = 0; i < num; i++)
		if (!FUNC1(map, reg + FUNC0(map, i)))
			return false;

	return true;
}