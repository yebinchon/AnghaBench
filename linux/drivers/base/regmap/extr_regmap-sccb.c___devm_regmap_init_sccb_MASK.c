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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct regmap* FUNC0 (struct regmap_bus const*) ; 
 scalar_t__ FUNC1 (struct regmap_bus const*) ; 
 struct regmap* FUNC2 (int /*<<< orphan*/ *,struct regmap_bus const*,int /*<<< orphan*/ *,struct regmap_config const*,struct lock_class_key*,char const*) ; 
 struct regmap_bus* FUNC3 (struct i2c_client*,struct regmap_config const*) ; 

struct regmap *FUNC4(struct i2c_client *i2c,
				       const struct regmap_config *config,
				       struct lock_class_key *lock_key,
				       const char *lock_name)
{
	const struct regmap_bus *bus = FUNC3(i2c, config);

	if (FUNC1(bus))
		return FUNC0(bus);

	return FUNC2(&i2c->dev, bus, &i2c->dev, config,
				  lock_key, lock_name);
}