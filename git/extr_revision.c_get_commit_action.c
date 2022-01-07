
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int min_age; int min_parents; scalar_t__ max_parents; scalar_t__ dense; scalar_t__ prune; scalar_t__ unpacked; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
typedef enum commit_action { ____Placeholder_commit_action } commit_action ;


 int SHOWN ;
 int TREESAME ;
 int UNINTERESTING ;
 int commit_ignore ;
 int commit_list_count (struct commit_list*) ;
 int commit_match (struct commit*,struct rev_info*) ;
 int commit_show ;
 int comparison_date (struct rev_info*,struct commit*) ;
 scalar_t__ has_object_pack (int *) ;
 scalar_t__ relevant_commit (int ) ;
 int want_ancestry (struct rev_info*) ;

enum commit_action get_commit_action(struct rev_info *revs, struct commit *commit)
{
 if (commit->object.flags & SHOWN)
  return commit_ignore;
 if (revs->unpacked && has_object_pack(&commit->object.oid))
  return commit_ignore;
 if (commit->object.flags & UNINTERESTING)
  return commit_ignore;
 if (revs->min_age != -1 &&
     comparison_date(revs, commit) > revs->min_age)
   return commit_ignore;
 if (revs->min_parents || (revs->max_parents >= 0)) {
  int n = commit_list_count(commit->parents);
  if ((n < revs->min_parents) ||
      ((revs->max_parents >= 0) && (n > revs->max_parents)))
   return commit_ignore;
 }
 if (!commit_match(commit, revs))
  return commit_ignore;
 if (revs->prune && revs->dense) {

  if (commit->object.flags & TREESAME) {
   int n;
   struct commit_list *p;

   if (!want_ancestry(revs))
    return commit_ignore;







   for (n = 0, p = commit->parents; p; p = p->next)
    if (relevant_commit(p->item))
     if (++n >= 2)
      return commit_show;
   return commit_ignore;
  }
 }
 return commit_show;
}
