
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int cache_bottom; scalar_t__ diff_index_cached; } ;
struct traverse_info {struct unpack_trees_options* data; } ;



__attribute__((used)) static void restore_cache_bottom(struct traverse_info *info, int bottom)
{
 struct unpack_trees_options *o = info->data;

 if (o->diff_index_cached)
  return;
 o->cache_bottom = bottom;
}
