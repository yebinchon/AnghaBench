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
struct regmap_config {int /*<<< orphan*/  name; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  readable_noinc_reg; int /*<<< orphan*/  writeable_noinc_reg; int /*<<< orphan*/  precious_reg; int /*<<< orphan*/  volatile_reg; int /*<<< orphan*/  readable_reg; int /*<<< orphan*/  writeable_reg; int /*<<< orphan*/  max_register; } ;
struct regmap {int cache_bypass; int cache_only; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  readable_noinc_reg; int /*<<< orphan*/  writeable_noinc_reg; int /*<<< orphan*/  precious_reg; int /*<<< orphan*/  volatile_reg; int /*<<< orphan*/  readable_reg; int /*<<< orphan*/  writeable_reg; int /*<<< orphan*/  max_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ) ; 

int FUNC4(struct regmap *map, const struct regmap_config *config)
{
	FUNC0(map);
	FUNC2(map);

	map->max_register = config->max_register;
	map->writeable_reg = config->writeable_reg;
	map->readable_reg = config->readable_reg;
	map->volatile_reg = config->volatile_reg;
	map->precious_reg = config->precious_reg;
	map->writeable_noinc_reg = config->writeable_noinc_reg;
	map->readable_noinc_reg = config->readable_noinc_reg;
	map->cache_type = config->cache_type;

	FUNC3(map, config->name);

	map->cache_bypass = false;
	map->cache_only = false;

	return FUNC1(map, config);
}