
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {int cache_bottom; TYPE_1__* src_index; scalar_t__ diff_index_cached; } ;
struct traverse_info {int namelen; int name; int prev; struct unpack_trees_options* data; } ;
struct TYPE_2__ {int cache_nr; } ;


 int find_cache_pos (int ,int ,int ) ;

__attribute__((used)) static int switch_cache_bottom(struct traverse_info *info)
{
 struct unpack_trees_options *o = info->data;
 int ret, pos;

 if (o->diff_index_cached)
  return 0;
 ret = o->cache_bottom;
 pos = find_cache_pos(info->prev, info->name, info->namelen);

 if (pos < -1)
  o->cache_bottom = -2 - pos;
 else if (pos < 0)
  o->cache_bottom = o->src_index->cache_nr;
 return ret;
}
