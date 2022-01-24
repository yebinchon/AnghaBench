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
struct TYPE_2__ {char const* dev_id; char const* con_id; struct clk* clk; } ;
struct clk {unsigned int bits; TYPE_1__ cl; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cgu_disable ; 
 int /*<<< orphan*/  cgu_enable ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct clk* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const char *dev, const char *con,
					unsigned int bits)
{
	struct clk *clk = FUNC1(sizeof(struct clk), GFP_KERNEL);

	clk->cl.dev_id = dev;
	clk->cl.con_id = con;
	clk->cl.clk = clk;
	clk->enable = cgu_enable;
	clk->disable = cgu_disable;
	clk->bits = bits;
	FUNC0(&clk->cl);
}