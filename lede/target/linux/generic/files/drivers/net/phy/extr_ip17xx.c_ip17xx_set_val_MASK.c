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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ip17xx_state {int /*<<< orphan*/  proc_mii; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ip17xx_state* FUNC1 (struct switch_dev*) ; 
 int FUNC2 (struct ip17xx_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
	struct ip17xx_state *state = FUNC1(dev);
	int myval, err = -EINVAL;

	myval = val->value.i;
	if (myval <= 0xffff && myval >= 0 && FUNC0(state->proc_mii)) {
		err = FUNC2(state, state->proc_mii, (u16)myval);
	}
	return err;
}