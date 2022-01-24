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
struct pinctrl_state {int dummy; } ;
typedef  struct pinctrl_state pinctrl ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int FUNC1 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct pinctrl_state* FUNC3 (struct device*) ; 
 struct pinctrl_state* FUNC4 (struct pinctrl_state*,char*) ; 
 int FUNC5 (struct pinctrl_state*,struct pinctrl_state*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct pinctrl *p;
	struct pinctrl_state *ide_state;
	int ret;

	p = FUNC3(dev);
	if (FUNC0(p))
		return FUNC1(p);

	ide_state = FUNC4(p, "ide");
	if (FUNC0(ide_state))
		return FUNC1(ide_state);

	ret = FUNC5(p, ide_state);
	if (ret) {
		FUNC2(dev, "could not select IDE state\n");
		return ret;
	}

	return 0;
}