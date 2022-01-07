
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cacheinfo {unsigned int level; int type; } ;
typedef enum cache_type { ____Placeholder_cache_type } cache_type ;



__attribute__((used)) static void ci_leaf_init(struct cacheinfo *this_leaf,
    struct device_node *node,
    enum cache_type type, unsigned int level)
{
 this_leaf->level = level;
 this_leaf->type = type;
}
