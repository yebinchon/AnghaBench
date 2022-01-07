
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ full_diff; scalar_t__ dense; scalar_t__ prune; } ;
struct commit {int dummy; } ;
typedef enum commit_action { ____Placeholder_commit_action } commit_action ;


 int commit_error ;
 int commit_show ;
 int get_commit_action (struct rev_info*,struct commit*) ;
 int rewrite_one ;
 scalar_t__ rewrite_parents (struct rev_info*,struct commit*,int ) ;
 int save_parents (struct rev_info*,struct commit*) ;
 scalar_t__ want_ancestry (struct rev_info*) ;

enum commit_action simplify_commit(struct rev_info *revs, struct commit *commit)
{
 enum commit_action action = get_commit_action(revs, commit);

 if (action == commit_show &&
     revs->prune && revs->dense && want_ancestry(revs)) {






  if (revs->full_diff)
   save_parents(revs, commit);
  if (rewrite_parents(revs, commit, rewrite_one) < 0)
   return commit_error;
 }
 return action;
}
