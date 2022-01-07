
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cpu_cacheinfo {struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;


 int CACHE_TYPE_DATA ;
 int CACHE_TYPE_INST ;
 int CACHE_TYPE_UNIFIED ;
 int ci_leaf_init (int ,struct device_node*,int ,int) ;
 struct cpu_cacheinfo* get_cpu_cacheinfo (unsigned int) ;
 struct device_node* of_cpu_device_node_get (unsigned int) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_find_next_cache_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int __populate_cache_leaves(unsigned int cpu)
{
 struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
 struct cacheinfo *this_leaf = this_cpu_ci->info_list;
 struct device_node *np = of_cpu_device_node_get(cpu);
 struct device_node *prev = ((void*)0);
 int levels = 1, level = 1;

 if (of_property_read_bool(np, "cache-size"))
  ci_leaf_init(this_leaf++, np, CACHE_TYPE_UNIFIED, level);
 if (of_property_read_bool(np, "i-cache-size"))
  ci_leaf_init(this_leaf++, np, CACHE_TYPE_INST, level);
 if (of_property_read_bool(np, "d-cache-size"))
  ci_leaf_init(this_leaf++, np, CACHE_TYPE_DATA, level);

 prev = np;
 while ((np = of_find_next_cache_node(np))) {
  of_node_put(prev);
  prev = np;
  if (!of_device_is_compatible(np, "cache"))
   break;
  if (of_property_read_u32(np, "cache-level", &level))
   break;
  if (level <= levels)
   break;
  if (of_property_read_bool(np, "cache-size"))
   ci_leaf_init(this_leaf++, np, CACHE_TYPE_UNIFIED, level);
  if (of_property_read_bool(np, "i-cache-size"))
   ci_leaf_init(this_leaf++, np, CACHE_TYPE_INST, level);
  if (of_property_read_bool(np, "d-cache-size"))
   ci_leaf_init(this_leaf++, np, CACHE_TYPE_DATA, level);
  levels = level;
 }
 of_node_put(np);

 return 0;
}
