
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_refdb ;


 int assert (int) ;
 int set_refdb (int *,int *) ;

void git_repository_set_refdb(git_repository *repo, git_refdb *refdb)
{
 assert(repo && refdb);
 set_refdb(repo, refdb);
}
