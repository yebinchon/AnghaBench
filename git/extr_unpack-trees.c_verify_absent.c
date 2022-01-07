
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int skip_sparse_checkout; } ;
struct cache_entry {int ce_flags; } ;
typedef enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;


 int CE_NEW_SKIP_WORKTREE ;
 int verify_absent_1 (struct cache_entry const*,int,struct unpack_trees_options*) ;

__attribute__((used)) static int verify_absent(const struct cache_entry *ce,
    enum unpack_trees_error_types error_type,
    struct unpack_trees_options *o)
{
 if (!o->skip_sparse_checkout && (ce->ce_flags & CE_NEW_SKIP_WORKTREE))
  return 0;
 return verify_absent_1(ce, error_type, o);
}
