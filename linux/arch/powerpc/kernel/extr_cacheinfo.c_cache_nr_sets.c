
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {size_t type; int ofnode; } ;
typedef int __be32 ;
struct TYPE_2__ {char* nr_sets_prop; } ;


 int ENODEV ;
 TYPE_1__* cache_type_info ;
 int * of_get_property (int ,char const*,int *) ;
 unsigned int of_read_number (int const*,int) ;

__attribute__((used)) static int cache_nr_sets(const struct cache *cache, unsigned int *ret)
{
 const char *propname;
 const __be32 *nr_sets;

 propname = cache_type_info[cache->type].nr_sets_prop;

 nr_sets = of_get_property(cache->ofnode, propname, ((void*)0));
 if (!nr_sets)
  return -ENODEV;

 *ret = of_read_number(nr_sets, 1);
 return 0;
}
