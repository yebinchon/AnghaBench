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
struct sdw_slave {int /*<<< orphan*/  dev; } ;
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;

/* Variables and functions */
 struct regmap* FUNC0 (int) ; 
 struct regmap* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct regmap_config const*,struct lock_class_key*,char const*) ; 
 int /*<<< orphan*/  regmap_sdw ; 
 int FUNC2 (struct regmap_config const*) ; 

struct regmap *FUNC3(struct sdw_slave *sdw,
				      const struct regmap_config *config,
				      struct lock_class_key *lock_key,
				      const char *lock_name)
{
	int ret;

	ret = FUNC2(config);
	if (ret)
		return FUNC0(ret);

	return FUNC1(&sdw->dev, &regmap_sdw,
			&sdw->dev, config, lock_key, lock_name);
}