
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {struct cache_tree* cache_tree; int name; int namelen; } ;
struct cache_tree {scalar_t__ entry_count; int subtree_nr; struct cache_tree_sub** down; int oid; } ;
typedef int path ;


 int PATH_MAX ;
 struct cache_tree_sub* cache_tree_sub (struct cache_tree*,int ) ;
 int dump_one (struct cache_tree*,char const*,char*) ;
 int oideq (int *,int *) ;
 int xsnprintf (char*,int,char*,char const*,int ,int ) ;

__attribute__((used)) static int dump_cache_tree(struct cache_tree *it,
      struct cache_tree *ref,
      const char *pfx)
{
 int i;
 int errs = 0;

 if (!it || !ref)

  return 0;

 if (it->entry_count < 0) {

  dump_one(it, pfx, "");
  dump_one(ref, pfx, "#(ref) ");
 }
 else {
  dump_one(it, pfx, "");
  if (!oideq(&it->oid, &ref->oid) ||
      ref->entry_count != it->entry_count ||
      ref->subtree_nr != it->subtree_nr) {

   dump_one(ref, pfx, "#(ref) ");
   errs = 1;
  }
 }

 for (i = 0; i < it->subtree_nr; i++) {
  char path[PATH_MAX];
  struct cache_tree_sub *down = it->down[i];
  struct cache_tree_sub *rdwn;

  rdwn = cache_tree_sub(ref, down->name);
  xsnprintf(path, sizeof(path), "%s%.*s/", pfx, down->namelen, down->name);
  if (dump_cache_tree(down->cache_tree, rdwn->cache_tree, path))
   errs = 1;
 }
 return errs;
}
