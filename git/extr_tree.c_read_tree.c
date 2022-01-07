
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct pathspec {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; int cache_tree; } ;
struct cache_entry {int dummy; } ;
typedef scalar_t__ read_tree_fn_t ;


 int QSORT (struct cache_entry**,int,int ) ;
 int cache_tree_free (int *) ;
 int ce_stage (struct cache_entry const*) ;
 int cmp_cache_name_compare ;
 scalar_t__ read_one_entry ;
 scalar_t__ read_one_entry_quick ;
 int read_tree_recursive (struct repository*,struct tree*,char*,int ,int,struct pathspec*,scalar_t__,struct index_state*) ;

int read_tree(struct repository *r, struct tree *tree, int stage,
       struct pathspec *match, struct index_state *istate)
{
 read_tree_fn_t fn = ((void*)0);
 int i, err;
 for (i = 0; !fn && i < istate->cache_nr; i++) {
  const struct cache_entry *ce = istate->cache[i];
  if (ce_stage(ce) == stage)
   fn = read_one_entry;
 }

 if (!fn)
  fn = read_one_entry_quick;
 err = read_tree_recursive(r, tree, "", 0, stage, match, fn, istate);
 if (fn == read_one_entry || err)
  return err;




 cache_tree_free(&istate->cache_tree);
 QSORT(istate->cache, istate->cache_nr, cmp_cache_name_compare);
 return 0;
}
