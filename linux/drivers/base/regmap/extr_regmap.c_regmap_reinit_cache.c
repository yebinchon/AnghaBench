
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int name; int cache_type; int readable_noinc_reg; int writeable_noinc_reg; int precious_reg; int volatile_reg; int readable_reg; int writeable_reg; int max_register; } ;
struct regmap {int cache_bypass; int cache_only; int cache_type; int readable_noinc_reg; int writeable_noinc_reg; int precious_reg; int volatile_reg; int readable_reg; int writeable_reg; int max_register; } ;


 int regcache_exit (struct regmap*) ;
 int regcache_init (struct regmap*,struct regmap_config const*) ;
 int regmap_debugfs_exit (struct regmap*) ;
 int regmap_debugfs_init (struct regmap*,int ) ;

int regmap_reinit_cache(struct regmap *map, const struct regmap_config *config)
{
 regcache_exit(map);
 regmap_debugfs_exit(map);

 map->max_register = config->max_register;
 map->writeable_reg = config->writeable_reg;
 map->readable_reg = config->readable_reg;
 map->volatile_reg = config->volatile_reg;
 map->precious_reg = config->precious_reg;
 map->writeable_noinc_reg = config->writeable_noinc_reg;
 map->readable_noinc_reg = config->readable_noinc_reg;
 map->cache_type = config->cache_type;

 regmap_debugfs_init(map, config->name);

 map->cache_bypass = 0;
 map->cache_only = 0;

 return regcache_init(map, config);
}
