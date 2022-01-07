
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;
typedef int git_annotated_commit ;


 int annotated_commit_init (int **,int *,int *) ;

int git_annotated_commit_from_commit(
 git_annotated_commit **out,
 git_commit *commit)
{
 return annotated_commit_init(out, commit, ((void*)0));
}
