
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_odb ;


 int assert (int) ;
 int set_odb (int *,int *) ;

void git_repository_set_odb(git_repository *repo, git_odb *odb)
{
 assert(repo && odb);
 set_odb(repo, odb);
}
