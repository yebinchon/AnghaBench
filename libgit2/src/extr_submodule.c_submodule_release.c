
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ path; scalar_t__ name; struct TYPE_5__* branch; struct TYPE_5__* url; int * repo; } ;
typedef TYPE_1__ git_submodule ;


 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,int) ;

__attribute__((used)) static void submodule_release(git_submodule *sm)
{
 if (!sm)
  return;

 if (sm->repo) {
  sm->repo = ((void*)0);
 }

 if (sm->path != sm->name)
  git__free(sm->path);
 git__free(sm->name);
 git__free(sm->url);
 git__free(sm->branch);
 git__memzero(sm, sizeof(*sm));
 git__free(sm);
}
