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
typedef  int u64 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct regmap*,int,unsigned int*) ; 

__attribute__((used)) static int FUNC1(struct regmap *regmap, int reg,
				       int bitmask, u64 *value)
{
	unsigned int data;

	if (FUNC0(regmap, reg, &data))
		return -EIO;

	*value = (data & bitmask) ? 1 : 0;
	return 0;
}