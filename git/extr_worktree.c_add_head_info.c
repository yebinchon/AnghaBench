
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int is_detached; int head_ref; int head_oid; } ;


 int REF_ISSYMREF ;
 int get_worktree_ref_store (struct worktree*) ;
 char* refs_resolve_ref_unsafe (int ,char*,int ,int *,int*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void add_head_info(struct worktree *wt)
{
 int flags;
 const char *target;

 target = refs_resolve_ref_unsafe(get_worktree_ref_store(wt),
      "HEAD",
      0,
      &wt->head_oid, &flags);
 if (!target)
  return;

 if (flags & REF_ISSYMREF)
  wt->head_ref = xstrdup(target);
 else
  wt->is_detached = 1;
}
