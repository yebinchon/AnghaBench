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
struct alchemy_fgcs_clk {int shift; int parent; int isen; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct alchemy_fgcs_clk *c)
{
	unsigned long v = FUNC0(c->reg);

	v &= ~(3 << c->shift);
	v |= (c->parent & 3) << c->shift;
	FUNC1(v, c->reg);
	c->isen = 1;
}