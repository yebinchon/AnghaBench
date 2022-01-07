
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ptr; } ;
struct TYPE_7__ {int objects; TYPE_4__ reserved_names; } ;
typedef TYPE_1__ git_repository ;


 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git_array_init_to_size (TYPE_4__,int) ;
 int git_cache_dispose (int *) ;
 scalar_t__ git_cache_init (int *) ;
 int git_repository__configmap_lookup_cache_clear (TYPE_1__*) ;

__attribute__((used)) static git_repository *repository_alloc(void)
{
 git_repository *repo = git__calloc(1, sizeof(git_repository));

 if (repo == ((void*)0) ||
  git_cache_init(&repo->objects) < 0)
  goto on_error;

 git_array_init_to_size(repo->reserved_names, 4);
 if (!repo->reserved_names.ptr)
  goto on_error;


 git_repository__configmap_lookup_cache_clear(repo);

 return repo;

on_error:
 if (repo)
  git_cache_dispose(&repo->objects);

 git__free(repo);
 return ((void*)0);
}
