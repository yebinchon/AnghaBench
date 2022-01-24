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
 int /*<<< orphan*/  ARMADA_37XX_NB_DFS_EN ; 
 unsigned int ARMADA_37XX_NB_DYN_MOD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,unsigned int,unsigned int*) ; 

__attribute__((used)) static bool FUNC3(struct regmap *base)
{
	unsigned int val, reg = ARMADA_37XX_NB_DYN_MOD;

	if (FUNC1(base))
		return false;

	FUNC2(base, reg, &val);

	return !!(val & FUNC0(ARMADA_37XX_NB_DFS_EN));
}