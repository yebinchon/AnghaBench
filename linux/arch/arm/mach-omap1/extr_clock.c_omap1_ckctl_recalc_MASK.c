#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk {int rate_offset; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_CKCTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

unsigned long FUNC1(struct clk *clk)
{
	/* Calculate divisor encoded as 2-bit exponent */
	int dsor = 1 << (3 & (FUNC0(ARM_CKCTL) >> clk->rate_offset));

	return clk->parent->rate / dsor;
}