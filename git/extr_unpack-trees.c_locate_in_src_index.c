
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {struct index_state* src_index; } ;
struct index_state {int dummy; } ;
struct cache_entry {int name; } ;


 int ce_namelen (struct cache_entry const*) ;
 int index_name_pos (struct index_state*,int ,int) ;

__attribute__((used)) static int locate_in_src_index(const struct cache_entry *ce,
          struct unpack_trees_options *o)
{
 struct index_state *index = o->src_index;
 int len = ce_namelen(ce);
 int pos = index_name_pos(index, ce->name, len);
 if (pos < 0)
  pos = -1 - pos;
 return pos;
}
