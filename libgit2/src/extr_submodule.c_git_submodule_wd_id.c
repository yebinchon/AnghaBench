
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int const wd_oid; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_SUBMODULE_STATUS__WD_OID_VALID ;
 int assert (TYPE_1__*) ;
 int git_error_clear () ;
 int git_repository_free (int *) ;
 int git_submodule_open_bare (int **,TYPE_1__*) ;

const git_oid *git_submodule_wd_id(git_submodule *submodule)
{
 assert(submodule);


 if (!(submodule->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID)) {
  git_repository *subrepo;


  if (!git_submodule_open_bare(&subrepo, submodule))
   git_repository_free(subrepo);
  else
   git_error_clear();
 }

 if (submodule->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID)
  return &submodule->wd_oid;
 else
  return ((void*)0);
}
