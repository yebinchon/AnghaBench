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
typedef  size_t u8 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (struct regmap*,int,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct regmap *regmap, int reg)
{
	unsigned int val, adc_val, reg_val;
	u8 temp_l, temp_h, cursrc;
	unsigned long rlsb;
	static const unsigned long rlsb_array[] = {
		0, 260420, 130210, 65100, 32550, 16280,
		8140, 4070, 2030, 0, 260420, 130210 };

	if (FUNC2(regmap, reg, &val))
		return -EIO;
	temp_l = (u8) val;

	if (FUNC2(regmap, (reg - 1), &val))
		return -EIO;
	temp_h = (u8) val;

	reg_val = temp_l | FUNC1(temp_h);
	cursrc = FUNC0(temp_h);
	rlsb = rlsb_array[cursrc];
	adc_val = reg_val * rlsb / 1000;

	return adc_val;
}