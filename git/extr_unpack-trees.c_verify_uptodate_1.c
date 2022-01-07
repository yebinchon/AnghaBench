
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int src_index; scalar_t__ reset; scalar_t__ index_only; } ;
struct stat {int dummy; } ;
struct cache_entry {int ce_flags; int name; int ce_mode; int oid; } ;
typedef enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;


 int CE_MATCH_IGNORE_SKIP_WORKTREE ;
 int CE_MATCH_IGNORE_VALID ;
 int CE_VALID ;
 scalar_t__ ENOENT ;
 scalar_t__ S_ISGITLINK (int ) ;
 int add_rejected_path (struct unpack_trees_options*,int,int ) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 scalar_t__ ce_uptodate (struct cache_entry const*) ;
 int check_submodule_move_head (struct cache_entry const*,char*,int ,struct unpack_trees_options*) ;
 scalar_t__ errno ;
 unsigned int ie_match_stat (int ,struct cache_entry const*,struct stat*,int) ;
 int lstat (int ,struct stat*) ;
 int oid_to_hex (int *) ;
 scalar_t__ submodule_from_ce (struct cache_entry const*) ;

__attribute__((used)) static int verify_uptodate_1(const struct cache_entry *ce,
        struct unpack_trees_options *o,
        enum unpack_trees_error_types error_type)
{
 struct stat st;

 if (o->index_only)
  return 0;






 if ((ce->ce_flags & CE_VALID) || ce_skip_worktree(ce))
  ;
 else if (o->reset || ce_uptodate(ce))
  return 0;

 if (!lstat(ce->name, &st)) {
  int flags = CE_MATCH_IGNORE_VALID|CE_MATCH_IGNORE_SKIP_WORKTREE;
  unsigned changed = ie_match_stat(o->src_index, ce, &st, flags);

  if (submodule_from_ce(ce)) {
   int r = check_submodule_move_head(ce,
    "HEAD", oid_to_hex(&ce->oid), o);
   if (r)
    return add_rejected_path(o, error_type, ce->name);
   return 0;
  }

  if (!changed)
   return 0;





  if (S_ISGITLINK(ce->ce_mode))
   return 0;

  errno = 0;
 }
 if (errno == ENOENT)
  return 0;
 return add_rejected_path(o, error_type, ce->name);
}
