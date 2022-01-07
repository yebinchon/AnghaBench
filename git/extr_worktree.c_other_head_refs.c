
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {scalar_t__ is_current; } ;
struct object_id {int dummy; } ;
typedef int (* each_ref_fn ) (int ,struct object_id*,int,void*) ;


 int RESOLVE_REF_READING ;
 int free_worktrees (struct worktree**) ;
 int get_main_ref_store (int ) ;
 struct worktree** get_worktrees (int ) ;
 int refs_read_ref_full (int ,int ,int ,struct object_id*,int*) ;
 int the_repository ;
 int worktree_ref (struct worktree*,char*) ;

int other_head_refs(each_ref_fn fn, void *cb_data)
{
 struct worktree **worktrees, **p;
 int ret = 0;

 worktrees = get_worktrees(0);
 for (p = worktrees; *p; p++) {
  struct worktree *wt = *p;
  struct object_id oid;
  int flag;

  if (wt->is_current)
   continue;

  if (!refs_read_ref_full(get_main_ref_store(the_repository),
     worktree_ref(wt, "HEAD"),
     RESOLVE_REF_READING,
     &oid, &flag))
   ret = fn(worktree_ref(wt, "HEAD"), &oid, flag, cb_data);
  if (ret)
   break;
 }
 free_worktrees(worktrees);
 return ret;
}
