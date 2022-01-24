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
struct regmap_field {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct regmap_field* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct regmap_field* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap_field*,struct regmap*,struct reg_field) ; 

struct regmap_field *FUNC3(struct device *dev,
		struct regmap *regmap, struct reg_field reg_field)
{
	struct regmap_field *rm_field = FUNC1(dev,
					sizeof(*rm_field), GFP_KERNEL);
	if (!rm_field)
		return FUNC0(-ENOMEM);

	FUNC2(rm_field, regmap, reg_field);

	return rm_field;

}