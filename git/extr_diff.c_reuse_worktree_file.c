
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int ce_mode; int oid; } ;


 int CE_VALID ;
 int FAST_WORKING_DIRECTORY ;
 int S_ISREG (int ) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 scalar_t__ ce_uptodate (struct cache_entry const*) ;
 scalar_t__ has_object_pack (struct object_id const*) ;
 int ie_match_stat (struct index_state*,struct cache_entry const*,struct stat*,int ) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int lstat (char const*,struct stat*) ;
 int oideq (struct object_id const*,int *) ;
 int strlen (char const*) ;
 scalar_t__ would_convert_to_git (struct index_state*,char const*) ;

__attribute__((used)) static int reuse_worktree_file(struct index_state *istate,
          const char *name,
          const struct object_id *oid,
          int want_file)
{
 const struct cache_entry *ce;
 struct stat st;
 int pos, len;
 if (!istate->cache)
  return 0;
 if (!FAST_WORKING_DIRECTORY && !want_file && has_object_pack(oid))
  return 0;





 if (!want_file && would_convert_to_git(istate, name))
  return 0;

 len = strlen(name);
 pos = index_name_pos(istate, name, len);
 if (pos < 0)
  return 0;
 ce = istate->cache[pos];





 if (!oideq(oid, &ce->oid) || !S_ISREG(ce->ce_mode))
  return 0;





 if ((ce->ce_flags & CE_VALID) || ce_skip_worktree(ce))
  return 0;




 if (ce_uptodate(ce) ||
     (!lstat(name, &st) && !ie_match_stat(istate, ce, &st, 0)))
  return 1;

 return 0;
}
