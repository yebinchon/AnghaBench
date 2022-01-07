
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_status_cb ;
typedef int git_repository ;


 int git_status_foreach_ext (int *,int *,int ,void*) ;

int git_status_foreach(git_repository *repo, git_status_cb cb, void *payload)
{
 return git_status_foreach_ext(repo, ((void*)0), cb, payload);
}
