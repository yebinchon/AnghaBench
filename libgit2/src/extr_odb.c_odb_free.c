
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_odb_backend ;
struct TYPE_13__ {size_t length; } ;
struct TYPE_12__ {int own_cache; TYPE_7__ backends; TYPE_1__* backend; } ;
typedef TYPE_2__ git_odb ;
typedef TYPE_2__ backend_internal ;


 int git__free (TYPE_2__*) ;
 int git__memzero (TYPE_2__*,int) ;
 int git_cache_dispose (int *) ;
 int git_vector_free (TYPE_7__*) ;
 TYPE_2__* git_vector_get (TYPE_7__*,size_t) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void odb_free(git_odb *db)
{
 size_t i;

 for (i = 0; i < db->backends.length; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *backend = internal->backend;

  backend->free(backend);

  git__free(internal);
 }

 git_vector_free(&db->backends);
 git_cache_dispose(&db->own_cache);

 git__memzero(db, sizeof(*db));
 git__free(db);
}
