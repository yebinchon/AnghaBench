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
 unsigned int ARMADA_37XX_DVFS_LOAD_1 ; 
 int /*<<< orphan*/  ARMADA_37XX_NB_CPU_LOAD ; 
 unsigned int ARMADA_37XX_NB_CPU_LOAD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned long rate, struct regmap *base)
{
	unsigned int cur_level;

	if (rate != 1200 * 1000 * 1000)
		return;

	FUNC1(base, ARMADA_37XX_NB_CPU_LOAD, &cur_level);
	cur_level &= ARMADA_37XX_NB_CPU_LOAD_MASK;
	if (cur_level <= ARMADA_37XX_DVFS_LOAD_1)
		return;

	FUNC2(base, ARMADA_37XX_NB_CPU_LOAD,
			   ARMADA_37XX_NB_CPU_LOAD_MASK,
			   ARMADA_37XX_DVFS_LOAD_1);
	FUNC0(20);
}