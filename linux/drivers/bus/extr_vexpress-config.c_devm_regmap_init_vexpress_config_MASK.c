#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vexpress_config_bridge {int /*<<< orphan*/  context; TYPE_1__* ops; } ;
struct regmap {int dummy; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {scalar_t__ class; } ;
struct TYPE_3__ {struct regmap* (* regmap_init ) (struct device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct vexpress_config_bridge* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct regmap**) ; 
 struct regmap** FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap**) ; 
 struct regmap* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ vexpress_config_class ; 
 int /*<<< orphan*/  vexpress_config_devres_release ; 

struct regmap *FUNC8(struct device *dev)
{
	struct vexpress_config_bridge *bridge;
	struct regmap *regmap;
	struct regmap **res;

	if (FUNC2(dev->parent->class != vexpress_config_class))
		return FUNC0(-ENODEV);

	bridge = FUNC3(dev->parent);
	if (FUNC2(!bridge))
		return FUNC0(-EINVAL);

	res = FUNC5(vexpress_config_devres_release, sizeof(*res),
			GFP_KERNEL);
	if (!res)
		return FUNC0(-ENOMEM);

	regmap = (bridge->ops->regmap_init)(dev, bridge->context);
	if (FUNC1(regmap)) {
		FUNC6(res);
		return regmap;
	}

	*res = regmap;
	FUNC4(dev, res);

	return regmap;
}