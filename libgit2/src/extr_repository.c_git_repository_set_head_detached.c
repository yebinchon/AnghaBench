
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;


 int detach (int *,int const*,int *) ;

int git_repository_set_head_detached(
 git_repository* repo,
 const git_oid* commitish)
{
 return detach(repo, commitish, ((void*)0));
}
