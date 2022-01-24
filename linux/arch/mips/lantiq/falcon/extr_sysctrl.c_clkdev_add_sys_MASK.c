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
struct TYPE_2__ {char const* dev_id; struct clk* clk; int /*<<< orphan*/ * con_id; } ;
struct clk {unsigned int module; unsigned int bits; TYPE_1__ cl; int /*<<< orphan*/  reboot; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; int /*<<< orphan*/  deactivate; int /*<<< orphan*/  activate; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct clk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_activate ; 
 int /*<<< orphan*/  sysctl_clkdis ; 
 int /*<<< orphan*/  sysctl_clken ; 
 int /*<<< orphan*/  sysctl_deactivate ; 
 int /*<<< orphan*/  sysctl_reboot ; 

__attribute__((used)) static inline void FUNC2(const char *dev, unsigned int module,
					unsigned int bits)
{
	struct clk *clk = FUNC1(sizeof(struct clk), GFP_KERNEL);

	clk->cl.dev_id = dev;
	clk->cl.con_id = NULL;
	clk->cl.clk = clk;
	clk->module = module;
	clk->bits = bits;
	clk->activate = sysctl_activate;
	clk->deactivate = sysctl_deactivate;
	clk->enable = sysctl_clken;
	clk->disable = sysctl_clkdis;
	clk->reboot = sysctl_reboot;
	FUNC0(&clk->cl);
}