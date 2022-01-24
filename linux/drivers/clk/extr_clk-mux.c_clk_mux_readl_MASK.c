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
struct clk_mux {int flags; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int CLK_MUX_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(struct clk_mux *mux)
{
	if (mux->flags & CLK_MUX_BIG_ENDIAN)
		return FUNC0(mux->reg);

	return FUNC1(mux->reg);
}