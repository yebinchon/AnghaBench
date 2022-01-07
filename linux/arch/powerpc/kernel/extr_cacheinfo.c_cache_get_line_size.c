
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {size_t type; int ofnode; } ;
typedef int __be32 ;
struct TYPE_2__ {char** line_size_props; } ;


 int ARRAY_SIZE (char**) ;
 int ENODEV ;
 TYPE_1__* cache_type_info ;
 int * of_get_property (int ,char const*,int *) ;
 unsigned int of_read_number (int const*,int) ;

__attribute__((used)) static int cache_get_line_size(const struct cache *cache, unsigned int *ret)
{
 const __be32 *line_size;
 int i, lim;

 lim = ARRAY_SIZE(cache_type_info[cache->type].line_size_props);

 for (i = 0; i < lim; i++) {
  const char *propname;

  propname = cache_type_info[cache->type].line_size_props[i];
  line_size = of_get_property(cache->ofnode, propname, ((void*)0));
  if (line_size)
   break;
 }

 if (!line_size)
  return -ENODEV;

 *ret = of_read_number(line_size, 1);
 return 0;
}
