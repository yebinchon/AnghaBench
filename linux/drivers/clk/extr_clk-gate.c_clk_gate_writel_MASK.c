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
typedef  int /*<<< orphan*/  u32 ;
struct clk_gate {int flags; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int CLK_GATE_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct clk_gate *gate, u32 val)
{
	if (gate->flags & CLK_GATE_BIG_ENDIAN)
		FUNC0(val, gate->reg);
	else
		FUNC1(val, gate->reg);
}