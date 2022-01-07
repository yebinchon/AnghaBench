
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int single_worktree; } ;
struct all_refs_cb {unsigned int all_flags; int * wt; struct rev_info* all_revs; } ;


 int add_other_reflogs_to_pending (struct all_refs_cb*) ;
 int for_each_reflog (int ,struct all_refs_cb*) ;
 int handle_one_reflog ;

void add_reflogs_to_pending(struct rev_info *revs, unsigned flags)
{
 struct all_refs_cb cb;

 cb.all_revs = revs;
 cb.all_flags = flags;
 cb.wt = ((void*)0);
 for_each_reflog(handle_one_reflog, &cb);

 if (!revs->single_worktree)
  add_other_reflogs_to_pending(&cb);
}
