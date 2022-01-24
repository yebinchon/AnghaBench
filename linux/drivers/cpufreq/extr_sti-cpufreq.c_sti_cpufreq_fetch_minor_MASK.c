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
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  syscfg_eng; struct device* cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  MINOR_ID_INDEX ; 
 TYPE_1__ ddata ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (struct device_node*,char*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct device *dev = ddata.cpu;
	struct device_node *np = dev->of_node;
	unsigned int minor_offset;
	unsigned int minid;
	int ret;

	ret = FUNC1(np, "st,syscfg-eng",
					 MINOR_ID_INDEX, &minor_offset);
	if (ret) {
		FUNC0(dev,
			"No minor number offset provided %pOF [%d]\n",
			np, ret);
		return ret;
	}

	ret = FUNC2(ddata.syscfg_eng, minor_offset, &minid);
	if (ret) {
		FUNC0(dev,
			"Failed to read the minor number from syscon [%d]\n",
			ret);
		return ret;
	}

	return minid & 0xf;
}