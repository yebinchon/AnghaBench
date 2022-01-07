
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;
struct tree {TYPE_2__ object; } ;
struct TYPE_4__ {scalar_t__ has_changes; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;
struct rev_info {TYPE_3__ pruning; } ;
struct commit {int dummy; } ;


 scalar_t__ REV_TREE_SAME ;
 int diff_tree_oid (int *,int *,char*,TYPE_3__*) ;
 struct tree* get_commit_tree (struct commit*) ;
 scalar_t__ tree_difference ;

__attribute__((used)) static int rev_same_tree_as_empty(struct rev_info *revs, struct commit *commit)
{
 int retval;
 struct tree *t1 = get_commit_tree(commit);

 if (!t1)
  return 0;

 tree_difference = REV_TREE_SAME;
 revs->pruning.flags.has_changes = 0;
 retval = diff_tree_oid(((void*)0), &t1->object.oid, "", &revs->pruning);

 return retval >= 0 && (tree_difference == REV_TREE_SAME);
}
