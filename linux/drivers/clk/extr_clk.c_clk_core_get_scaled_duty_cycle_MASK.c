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
struct clk_duty {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct clk_core {struct clk_duty duty; } ;

/* Variables and functions */
 int FUNC0 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_core *core,
					  unsigned int scale)
{
	struct clk_duty *duty = &core->duty;
	int ret;

	FUNC1();

	ret = FUNC0(core);
	if (!ret)
		ret = FUNC3(scale, duty->num, duty->den);

	FUNC2();

	return ret;
}