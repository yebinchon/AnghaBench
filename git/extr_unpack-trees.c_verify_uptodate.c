
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int skip_sparse_checkout; } ;
struct cache_entry {int ce_flags; } ;


 int CE_NEW_SKIP_WORKTREE ;
 int ERROR_NOT_UPTODATE_FILE ;
 int verify_uptodate_1 (struct cache_entry const*,struct unpack_trees_options*,int ) ;

int verify_uptodate(const struct cache_entry *ce,
      struct unpack_trees_options *o)
{
 if (!o->skip_sparse_checkout && (ce->ce_flags & CE_NEW_SKIP_WORKTREE))
  return 0;
 return verify_uptodate_1(ce, o, ERROR_NOT_UPTODATE_FILE);
}
