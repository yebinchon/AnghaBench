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
struct switch_dev {int dummy; } ;
struct ip17xx_state {TYPE_1__* regs; } ;
struct TYPE_2__ {int MII_REGISTER_EN_BIT; int /*<<< orphan*/  MII_REGISTER_EN; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip17xx_state*,int /*<<< orphan*/ ) ; 
 struct ip17xx_state* FUNC2 (struct switch_dev*) ; 
 int FUNC3 (struct ip17xx_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct switch_dev *dev)
{
	struct ip17xx_state *state = FUNC2(dev);

	if (FUNC0(state->regs->MII_REGISTER_EN)) {
		int val = FUNC1(state, state->regs->MII_REGISTER_EN);
		if (val < 0) {
			return val;
		}
		val |= (1<<state->regs->MII_REGISTER_EN_BIT);
		return FUNC3(state, state->regs->MII_REGISTER_EN, val);
	}
	return 0;
}