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
struct TYPE_2__ {char const* dev_id; struct clk* clk; } ;
struct clk {unsigned long rate; TYPE_1__ cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct clk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(const char *dev, unsigned long rate)
{
	struct clk *clk = FUNC1(sizeof(struct clk), GFP_KERNEL);

	if (!clk)
		FUNC2("failed to add clock");

	clk->cl.dev_id = dev;
	clk->cl.clk = clk;

	clk->rate = rate;

	FUNC0(&clk->cl);
}