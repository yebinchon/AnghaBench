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
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 scalar_t__ clk_disable_unprepare ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*) ; 
 int FUNC4 (struct device*,void (*) (void*),struct clk*) ; 
 struct clk* FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, char *id)
{
	struct clk *clk;
	int ret;

	clk = FUNC5(dev, id);
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to get %s", id);
		return ret;
	}

	ret = FUNC2(clk);
	if (ret) {
		FUNC3(dev, "failed to enable %s", id);
		return ret;
	}

	ret = FUNC4(dev,
				       (void(*)(void *))clk_disable_unprepare,
				       clk);
	if (ret) {
		FUNC3(dev, "failed to add reset action on %s", id);
		return ret;
	}

	return 0;
}