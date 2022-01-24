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
struct clk_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POST_RATE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_core*,struct clk_core*) ; 

__attribute__((used)) static void FUNC3(struct clk_core *core,
				  struct clk_core *new_parent)
{
	FUNC2(core, new_parent);
	FUNC0(core);
	FUNC1(core, POST_RATE_CHANGE);
}