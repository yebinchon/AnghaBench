
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int cache_bottom; int src_index; int merge; } ;
struct tree_desc {int dummy; } ;
struct traverse_info {unsigned long df_conflicts; int pathlen; scalar_t__ mode; int namelen; int name; int pathspec; struct traverse_info* prev; struct unpack_trees_options* data; } ;
struct object_id {int dummy; } ;
struct name_entry {struct object_id oid; scalar_t__ mode; int pathlen; int path; } ;


 int BUG (char*) ;
 int MAX_UNPACK_TREES ;
 int all_trees_same_as_cache_tree (int,unsigned long,struct name_entry*,struct traverse_info*) ;
 scalar_t__ are_same_oid (struct name_entry*,struct name_entry*) ;
 void* fill_tree_descriptor (int ,struct tree_desc*,struct object_id const*) ;
 int free (void*) ;
 int index_pos_by_traverse_info (struct name_entry*,struct traverse_info*) ;
 int restore_cache_bottom (struct traverse_info*,int) ;
 int st_add3 (int ,int ,int) ;
 int switch_cache_bottom (struct traverse_info*) ;
 int the_repository ;
 int traverse_by_cache_tree (int,int,int,struct traverse_info*) ;
 int traverse_trees (int ,int,struct tree_desc*,struct traverse_info*) ;
 int tree_entry_len (struct name_entry*) ;

__attribute__((used)) static int traverse_trees_recursive(int n, unsigned long dirmask,
        unsigned long df_conflicts,
        struct name_entry *names,
        struct traverse_info *info)
{
 struct unpack_trees_options *o = info->data;
 int i, ret, bottom;
 int nr_buf = 0;
 struct tree_desc t[MAX_UNPACK_TREES];
 void *buf[MAX_UNPACK_TREES];
 struct traverse_info newinfo;
 struct name_entry *p;
 int nr_entries;

 nr_entries = all_trees_same_as_cache_tree(n, dirmask, names, info);
 if (nr_entries > 0) {
  int pos = index_pos_by_traverse_info(names, info);

  if (!o->merge || df_conflicts)
   BUG("Wrong condition to get here buddy");







  bottom = o->cache_bottom;
  ret = traverse_by_cache_tree(pos, nr_entries, n, info);
  o->cache_bottom = bottom;
  return ret;
 }

 p = names;
 while (!p->mode)
  p++;

 newinfo = *info;
 newinfo.prev = info;
 newinfo.pathspec = info->pathspec;
 newinfo.name = p->path;
 newinfo.namelen = p->pathlen;
 newinfo.mode = p->mode;
 newinfo.pathlen = st_add3(newinfo.pathlen, tree_entry_len(p), 1);
 newinfo.df_conflicts |= df_conflicts;
 for (i = 0; i < n; i++, dirmask >>= 1) {
  if (i > 0 && are_same_oid(&names[i], &names[i - 1]))
   t[i] = t[i - 1];
  else if (i > 1 && are_same_oid(&names[i], &names[i - 2]))
   t[i] = t[i - 2];
  else {
   const struct object_id *oid = ((void*)0);
   if (dirmask & 1)
    oid = &names[i].oid;
   buf[nr_buf++] = fill_tree_descriptor(the_repository, t + i, oid);
  }
 }

 bottom = switch_cache_bottom(&newinfo);
 ret = traverse_trees(o->src_index, n, t, &newinfo);
 restore_cache_bottom(&newinfo, bottom);

 for (i = 0; i < nr_buf; i++)
  free(buf[i]);

 return ret;
}
