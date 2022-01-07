
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {TYPE_1__* src_index; } ;
struct traverse_info {struct unpack_trees_options* data; } ;
struct name_entry {int pathlen; int path; } ;
struct cache_entry {int dummy; } ;
struct TYPE_2__ {struct cache_entry** cache; } ;


 int find_cache_pos (struct traverse_info*,int ,int ) ;

__attribute__((used)) static struct cache_entry *find_cache_entry(struct traverse_info *info,
         const struct name_entry *p)
{
 int pos = find_cache_pos(info, p->path, p->pathlen);
 struct unpack_trees_options *o = info->data;

 if (0 <= pos)
  return o->src_index->cache[pos];
 else
  return ((void*)0);
}
