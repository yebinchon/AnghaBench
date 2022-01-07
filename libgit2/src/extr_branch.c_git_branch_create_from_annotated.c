
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_3__ {int description; int commit; } ;
typedef TYPE_1__ git_annotated_commit ;


 int create_branch (int **,int *,char const*,int ,int ,int) ;

int git_branch_create_from_annotated(
 git_reference **ref_out,
 git_repository *repository,
 const char *branch_name,
 const git_annotated_commit *commit,
 int force)
{
 return create_branch(ref_out,
  repository, branch_name, commit->commit, commit->description, force);
}
