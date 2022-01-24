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
struct reset_controller_dev {int dummy; } ;
struct regmap {int dummy; } ;
struct genpd_onecell_data {size_t num_domains; int /*<<< orphan*/ ** domains; } ;
struct gdsc_desc {size_t num; struct gdsc** scs; struct device* dev; } ;
struct gdsc {int /*<<< orphan*/  pd; scalar_t__ parent; struct reset_controller_dev* rcdev; struct regmap* regmap; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ ** FUNC0 (struct device*,size_t,int,int /*<<< orphan*/ ) ; 
 struct genpd_onecell_data* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gdsc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct genpd_onecell_data*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC5(struct gdsc_desc *desc,
		  struct reset_controller_dev *rcdev, struct regmap *regmap)
{
	int i, ret;
	struct genpd_onecell_data *data;
	struct device *dev = desc->dev;
	struct gdsc **scs = desc->scs;
	size_t num = desc->num;

	data = FUNC1(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->domains = FUNC0(dev, num, sizeof(*data->domains),
				     GFP_KERNEL);
	if (!data->domains)
		return -ENOMEM;

	data->num_domains = num;
	for (i = 0; i < num; i++) {
		if (!scs[i])
			continue;
		scs[i]->regmap = regmap;
		scs[i]->rcdev = rcdev;
		ret = FUNC2(scs[i]);
		if (ret)
			return ret;
		data->domains[i] = &scs[i]->pd;
	}

	/* Add subdomains */
	for (i = 0; i < num; i++) {
		if (!scs[i])
			continue;
		if (scs[i]->parent)
			FUNC4(scs[i]->parent, &scs[i]->pd);
	}

	return FUNC3(dev->of_node, data);
}