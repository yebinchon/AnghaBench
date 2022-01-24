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
struct vexpress_config_bridge {int /*<<< orphan*/  context; TYPE_1__* ops; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* regmap_exit ) (struct regmap*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct vexpress_config_bridge* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, void *res)
{
	struct vexpress_config_bridge *bridge = FUNC0(dev->parent);
	struct regmap *regmap = res;

	bridge->ops->regmap_exit(regmap, bridge->context);
}