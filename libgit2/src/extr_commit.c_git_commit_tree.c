
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_5__ {int repo; } ;
struct TYPE_6__ {int tree_id; TYPE_1__ object; } ;
typedef TYPE_2__ git_commit ;


 int assert (TYPE_2__ const*) ;
 int git_tree_lookup (int **,int ,int *) ;

int git_commit_tree(git_tree **tree_out, const git_commit *commit)
{
 assert(commit);
 return git_tree_lookup(tree_out, commit->object.repo, &commit->tree_id);
}
