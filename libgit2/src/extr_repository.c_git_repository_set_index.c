
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int assert (int *) ;
 int set_index (int *,int *) ;

void git_repository_set_index(git_repository *repo, git_index *index)
{
 assert(repo);
 set_index(repo, index);
}
