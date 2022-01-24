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
struct regmap_config {int dummy; } ;
struct regmap_bus {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct device*,struct regmap_bus const*,void*,struct regmap_config const*,struct lock_class_key*,char const*) ; 
 int /*<<< orphan*/  devm_regmap_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct regmap**) ; 
 struct regmap** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap**) ; 

struct regmap *FUNC6(struct device *dev,
				  const struct regmap_bus *bus,
				  void *bus_context,
				  const struct regmap_config *config,
				  struct lock_class_key *lock_key,
				  const char *lock_name)
{
	struct regmap **ptr, *regmap;

	ptr = FUNC4(devm_regmap_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	regmap = FUNC2(dev, bus, bus_context, config,
			       lock_key, lock_name);
	if (!FUNC1(regmap)) {
		*ptr = regmap;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return regmap;
}