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
 int ENOMEM ; 
 struct clk* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (struct device*,int,char const*,unsigned int) ; 
 struct clk* FUNC4 (struct device*,int,char const*,unsigned int) ; 
 int FUNC5 (struct device*,int,char const*,unsigned int,int) ; 

__attribute__((used)) static struct clk *FUNC6(struct device *dev, int id, bool unique_aux)
{
	int ret;
	unsigned int offset;
	void *p = NULL;
	const char *s;
	struct clk *clk;

	if (id >= 0) {
		offset = 0x4501 + (0x1000 * id);
		s = p = FUNC1(GFP_KERNEL, "%d", id);
		if (!s)
			return FUNC0(-ENOMEM);
	} else {
		offset = 0x500;
		s = "_l2";
	}

	ret = FUNC3(dev, id, s, offset);
	if (ret) {
		clk = FUNC0(ret);
		goto err;
	}

	ret = FUNC5(dev, id, s, offset, unique_aux);
	if (ret) {
		clk = FUNC0(ret);
		goto err;
	}

	clk = FUNC4(dev, id, s, offset);
err:
	FUNC2(p);
	return clk;
}