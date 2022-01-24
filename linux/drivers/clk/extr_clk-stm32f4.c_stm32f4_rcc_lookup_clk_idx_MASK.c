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
typedef  int /*<<< orphan*/  table ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int BITS_PER_LONG_LONG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int MAX_GATE_MAP ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stm32f4_gate_map ; 
 int stm32fx_end_primary_clk ; 

__attribute__((used)) static int FUNC6(u8 primary, u8 secondary)
{
	u64 table[MAX_GATE_MAP];

	if (primary == 1) {
		if (FUNC3(secondary >= stm32fx_end_primary_clk))
			return -EINVAL;
		return secondary;
	}

	FUNC5(table, stm32f4_gate_map, sizeof(table));

	/* only bits set in table can be used as indices */
	if (FUNC3(secondary >= BITS_PER_BYTE * sizeof(table) ||
		    0 == (table[FUNC1(secondary)] &
			  FUNC0(secondary))))
		return -EINVAL;

	/* mask out bits above our current index */
	table[FUNC1(secondary)] &=
	    FUNC2(secondary % BITS_PER_LONG_LONG, 0);

	return stm32fx_end_primary_clk - 1 + FUNC4(table[0]) +
	       (FUNC1(secondary) >= 1 ? FUNC4(table[1]) : 0) +
	       (FUNC1(secondary) >= 2 ? FUNC4(table[2]) : 0);
}