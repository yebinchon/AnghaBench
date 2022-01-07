
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int git_config_iterator ;
typedef int git_config_entry ;
struct TYPE_12__ {int (* iterator ) (TYPE_4__**,TYPE_1__*) ;} ;
typedef TYPE_1__ git_config_backend ;
struct TYPE_13__ {TYPE_1__* backend; } ;
typedef TYPE_2__ backend_internal ;
struct TYPE_14__ {size_t i; TYPE_4__* current; TYPE_10__* cfg; } ;
typedef TYPE_3__ all_iter ;
struct TYPE_15__ {int (* next ) (int **,TYPE_4__*) ;int (* free ) (TYPE_4__*) ;} ;
struct TYPE_11__ {int backends; } ;


 int GIT_ENOTFOUND ;
 int GIT_ITEROVER ;
 scalar_t__ find_next_backend (size_t*,TYPE_10__*,size_t) ;
 TYPE_2__* git_vector_get (int *,size_t) ;
 int stub1 (int **,TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__**,TYPE_1__*) ;
 int stub4 (int **,TYPE_4__*) ;

__attribute__((used)) static int all_iter_next(git_config_entry **entry, git_config_iterator *_iter)
{
 all_iter *iter = (all_iter *) _iter;
 backend_internal *internal;
 git_config_backend *backend;
 size_t i;
 int error = 0;

 if (iter->current != ((void*)0) &&
     (error = iter->current->next(entry, iter->current)) == 0) {
  return 0;
 }

 if (error < 0 && error != GIT_ITEROVER)
  return error;

 do {
  if (find_next_backend(&i, iter->cfg, iter->i) < 0)
   return GIT_ITEROVER;

  internal = git_vector_get(&iter->cfg->backends, i - 1);
  backend = internal->backend;
  iter->i = i - 1;

  if (iter->current)
   iter->current->free(iter->current);

  iter->current = ((void*)0);
  error = backend->iterator(&iter->current, backend);
  if (error == GIT_ENOTFOUND)
   continue;

  if (error < 0)
   return error;

  error = iter->current->next(entry, iter->current);

  if (error == GIT_ITEROVER)
   continue;

  return error;

 } while(1);

 return GIT_ITEROVER;
}
