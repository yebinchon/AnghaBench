
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t size; } ;
struct TYPE_8__ {struct TYPE_8__* ident_email; struct TYPE_8__* ident_name; struct TYPE_8__* namespace; struct TYPE_8__* workdir; struct TYPE_8__* commondir; struct TYPE_8__* gitdir; struct TYPE_8__* gitlink; TYPE_4__ reserved_names; int * diff_drivers; int objects; } ;
typedef TYPE_1__ git_repository ;


 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,int) ;
 int git_array_clear (TYPE_4__) ;
 int git_array_get (TYPE_4__,size_t) ;
 int git_buf_dispose (int ) ;
 int git_cache_dispose (int *) ;
 int git_diff_driver_registry_free (int *) ;
 int git_repository__cleanup (TYPE_1__*) ;

void git_repository_free(git_repository *repo)
{
 size_t i;

 if (repo == ((void*)0))
  return;

 git_repository__cleanup(repo);

 git_cache_dispose(&repo->objects);

 git_diff_driver_registry_free(repo->diff_drivers);
 repo->diff_drivers = ((void*)0);

 for (i = 0; i < repo->reserved_names.size; i++)
  git_buf_dispose(git_array_get(repo->reserved_names, i));
 git_array_clear(repo->reserved_names);

 git__free(repo->gitlink);
 git__free(repo->gitdir);
 git__free(repo->commondir);
 git__free(repo->workdir);
 git__free(repo->namespace);
 git__free(repo->ident_name);
 git__free(repo->ident_email);

 git__memzero(repo, sizeof(*repo));
 git__free(repo);
}
