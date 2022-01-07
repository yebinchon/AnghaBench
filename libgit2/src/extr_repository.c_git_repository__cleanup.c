
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int objects; } ;
typedef TYPE_1__ git_repository ;


 int assert (TYPE_1__*) ;
 int git_attr_cache_flush (TYPE_1__*) ;
 int git_cache_clear (int *) ;
 int git_repository_submodule_cache_clear (TYPE_1__*) ;
 int set_config (TYPE_1__*,int *) ;
 int set_index (TYPE_1__*,int *) ;
 int set_odb (TYPE_1__*,int *) ;
 int set_refdb (TYPE_1__*,int *) ;

void git_repository__cleanup(git_repository *repo)
{
 assert(repo);

 git_repository_submodule_cache_clear(repo);
 git_cache_clear(&repo->objects);
 git_attr_cache_flush(repo);

 set_config(repo, ((void*)0));
 set_index(repo, ((void*)0));
 set_odb(repo, ((void*)0));
 set_refdb(repo, ((void*)0));
}
