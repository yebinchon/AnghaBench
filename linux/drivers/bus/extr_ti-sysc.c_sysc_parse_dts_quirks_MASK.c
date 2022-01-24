#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  quirks; } ;
struct sysc {int /*<<< orphan*/  dev; TYPE_1__ cfg; } ;
struct property {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct property* FUNC2 (struct device_node*,char const*,int*) ; 
 TYPE_2__* sysc_dts_quirks ; 

__attribute__((used)) static void FUNC3(struct sysc *ddata, struct device_node *np,
				  bool is_child)
{
	const struct property *prop;
	int i, len;

	for (i = 0; i < FUNC0(sysc_dts_quirks); i++) {
		const char *name = sysc_dts_quirks[i].name;

		prop = FUNC2(np, name, &len);
		if (!prop)
			continue;

		ddata->cfg.quirks |= sysc_dts_quirks[i].mask;
		if (is_child) {
			FUNC1(ddata->dev,
				 "dts flag should be at module level for %s\n",
				 name);
		}
	}
}