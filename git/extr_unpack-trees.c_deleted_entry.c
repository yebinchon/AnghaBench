
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct cache_entry {int ce_flags; } ;


 int CE_CONFLICTED ;
 int CE_REMOVE ;
 int ERROR_WOULD_LOSE_UNTRACKED_REMOVED ;
 int add_entry (struct unpack_trees_options*,struct cache_entry const*,int ,int ) ;
 int invalidate_ce_path (struct cache_entry const*,struct unpack_trees_options*) ;
 scalar_t__ verify_absent (struct cache_entry const*,int ,struct unpack_trees_options*) ;
 scalar_t__ verify_uptodate (struct cache_entry const*,struct unpack_trees_options*) ;

__attribute__((used)) static int deleted_entry(const struct cache_entry *ce,
    const struct cache_entry *old,
    struct unpack_trees_options *o)
{

 if (!old) {
  if (verify_absent(ce, ERROR_WOULD_LOSE_UNTRACKED_REMOVED, o))
   return -1;
  return 0;
 }
 if (!(old->ce_flags & CE_CONFLICTED) && verify_uptodate(old, o))
  return -1;
 add_entry(o, ce, CE_REMOVE, 0);
 invalidate_ce_path(ce, o);
 return 1;
}
