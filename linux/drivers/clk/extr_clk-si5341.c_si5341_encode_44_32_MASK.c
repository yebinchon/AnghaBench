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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct regmap {int dummy; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int FUNC3 (struct regmap*,unsigned int,int*,int) ; 

__attribute__((used)) static int FUNC4(struct regmap *regmap, unsigned int reg,
	u64 n_num, u32 n_den)
{
	u8 r[10];

	/* Shift left as far as possible without overflowing */
	while (!(n_num & FUNC1(43)) && !(n_den & FUNC0(31))) {
		n_num <<= 1;
		n_den <<= 1;
	}

	/* 44 bits (6 bytes) numerator */
	FUNC2(n_num, r);
	r[4] = (n_num >> 32) & 0xff;
	r[5] = (n_num >> 40) & 0x0f;
	/* 32 bits denominator */
	FUNC2(n_den, &r[6]);

	/* Program the fraction */
	return FUNC3(regmap, reg, r, sizeof(r));
}