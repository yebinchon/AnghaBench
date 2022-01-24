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
struct regmap_range {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,struct regmap_range const*) ; 

bool FUNC1(unsigned int reg,
			  const struct regmap_range *ranges,
			  unsigned int nranges)
{
	const struct regmap_range *r;
	int i;

	for (i = 0, r = ranges; i < nranges; i++, r++)
		if (FUNC0(reg, r))
			return true;
	return false;
}