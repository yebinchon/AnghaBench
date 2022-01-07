
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int result; } ;
typedef struct cache_entry {int ce_flags; int oid; } const cache_entry ;


 int CE_ADDED ;
 int CE_CONFLICTED ;
 int CE_NEW_SKIP_WORKTREE ;
 int CE_SKIP_WORKTREE ;
 int CE_STAGEMASK ;
 int CE_UPDATE ;
 int ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ;
 int check_submodule_move_head (struct cache_entry const*,int *,int *,struct unpack_trees_options*) ;
 int copy_cache_entry (struct cache_entry const*,struct cache_entry const*) ;
 int discard_cache_entry (struct cache_entry const*) ;
 int do_add_entry (struct unpack_trees_options*,struct cache_entry const*,int,int ) ;
 struct cache_entry const* dup_cache_entry (struct cache_entry const*,int *) ;
 int invalidate_ce_path (struct cache_entry const*,struct unpack_trees_options*) ;
 int * oid_to_hex (int *) ;
 scalar_t__ same (struct cache_entry const*,struct cache_entry const*) ;
 scalar_t__ submodule_from_ce (struct cache_entry const*) ;
 scalar_t__ verify_absent (struct cache_entry const*,int ,struct unpack_trees_options*) ;
 scalar_t__ verify_uptodate (struct cache_entry const*,struct unpack_trees_options*) ;

__attribute__((used)) static int merged_entry(const struct cache_entry *ce,
   const struct cache_entry *old,
   struct unpack_trees_options *o)
{
 int update = CE_UPDATE;
 struct cache_entry *merge = dup_cache_entry(ce, &o->result);

 if (!old) {
  update |= CE_ADDED;
  merge->ce_flags |= CE_NEW_SKIP_WORKTREE;

  if (verify_absent(merge,
      ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, o)) {
   discard_cache_entry(merge);
   return -1;
  }
  invalidate_ce_path(merge, o);

  if (submodule_from_ce(ce)) {
   int ret = check_submodule_move_head(ce, ((void*)0),
           oid_to_hex(&ce->oid),
           o);
   if (ret)
    return ret;
  }

 } else if (!(old->ce_flags & CE_CONFLICTED)) {







  if (same(old, merge)) {
   copy_cache_entry(merge, old);
   update = 0;
  } else {
   if (verify_uptodate(old, o)) {
    discard_cache_entry(merge);
    return -1;
   }

   update |= old->ce_flags & (CE_SKIP_WORKTREE | CE_NEW_SKIP_WORKTREE);
   invalidate_ce_path(old, o);
  }

  if (submodule_from_ce(ce)) {
   int ret = check_submodule_move_head(ce, oid_to_hex(&old->oid),
           oid_to_hex(&ce->oid),
           o);
   if (ret)
    return ret;
  }
 } else {




  invalidate_ce_path(old, o);
 }

 do_add_entry(o, merge, update, CE_STAGEMASK);
 return 1;
}
