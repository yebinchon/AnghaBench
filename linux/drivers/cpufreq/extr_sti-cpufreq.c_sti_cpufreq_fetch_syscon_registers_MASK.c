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
struct TYPE_2__ {void* syscfg_eng; void* syscfg; struct device* cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 TYPE_1__ ddata ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct device *dev = ddata.cpu;
	struct device_node *np = dev->of_node;

	ddata.syscfg = FUNC3(np, "st,syscfg");
	if (FUNC0(ddata.syscfg)) {
		FUNC2(dev,  "\"st,syscfg\" not supplied\n");
		return FUNC1(ddata.syscfg);
	}

	ddata.syscfg_eng = FUNC3(np, "st,syscfg-eng");
	if (FUNC0(ddata.syscfg_eng)) {
		FUNC2(dev, "\"st,syscfg-eng\" not supplied\n");
		return FUNC1(ddata.syscfg_eng);
	}

	return 0;
}