
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {scalar_t__ index_only; struct rev_info* unpack_data; } ;
struct TYPE_2__ {scalar_t__ ita_invisible_in_index; } ;
struct rev_info {TYPE_1__ diffopt; int ignore_merges; } ;
struct diff_filepair {int one; } ;
struct cache_entry {int ce_flags; int ce_mode; int oid; int name; } ;


 int CE_VALID ;
 scalar_t__ ce_intent_to_add (struct cache_entry const*) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 scalar_t__ ce_stage (struct cache_entry const*) ;
 int diff_index_show_file (struct rev_info*,char*,struct cache_entry const*,int *,int,int ,int ) ;
 struct diff_filepair* diff_unmerge (TYPE_1__*,int ) ;
 int fill_filespec (int ,int *,int,int ) ;
 int show_modified (struct rev_info*,struct cache_entry const*,struct cache_entry const*,int,int,int) ;
 int show_new_file (struct rev_info*,struct cache_entry const*,int,int) ;

__attribute__((used)) static void do_oneway_diff(struct unpack_trees_options *o,
      const struct cache_entry *idx,
      const struct cache_entry *tree)
{
 struct rev_info *revs = o->unpack_data;
 int match_missing, cached;





 if (o->index_only &&
     revs->diffopt.ita_invisible_in_index &&
     idx && ce_intent_to_add(idx)) {
  idx = ((void*)0);
  if (!tree)
   return;
 }


 cached = o->index_only ||
  (idx && ((idx->ce_flags & CE_VALID) || ce_skip_worktree(idx)));







 match_missing = !revs->ignore_merges;

 if (cached && idx && ce_stage(idx)) {
  struct diff_filepair *pair;
  pair = diff_unmerge(&revs->diffopt, idx->name);
  if (tree)
   fill_filespec(pair->one, &tree->oid, 1,
          tree->ce_mode);
  return;
 }




 if (!tree) {
  show_new_file(revs, idx, cached, match_missing);
  return;
 }




 if (!idx) {
  diff_index_show_file(revs, "-", tree, &tree->oid, 1,
         tree->ce_mode, 0);
  return;
 }


 show_modified(revs, tree, idx, 1, cached, match_missing);
}
