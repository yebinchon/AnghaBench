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
typedef  int u32 ;
typedef  int u16 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int WHISKEY_COVE_ALRT_HIGH_BIT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct regmap*,int,int,int) ; 
 int FUNC3 (struct regmap*,int,int) ; 
 int /*<<< orphan*/  s8 ; 

__attribute__((used)) static int
FUNC4(struct regmap *regmap, int reg, int raw)
{
	u32 bsr_num;
	u16 resi_val, count = 0, thrsh = 0;
	u8 alrt_h, alrt_l, cursel = 0;

	bsr_num = raw;
	bsr_num /= (1 << 5);

	count = FUNC1(bsr_num) - 1;

	cursel = FUNC0(s8, (count - 7), 0, 7);
	thrsh = raw / (1 << (4 + cursel));

	resi_val = (cursel << 9) | thrsh;
	alrt_h = (resi_val >> 8) & WHISKEY_COVE_ALRT_HIGH_BIT_MASK;
	if (FUNC2(regmap,
				reg - 1,
				WHISKEY_COVE_ALRT_HIGH_BIT_MASK,
				alrt_h))
		return -EIO;

	alrt_l = (u8)resi_val;
	return FUNC3(regmap, reg, alrt_l);
}