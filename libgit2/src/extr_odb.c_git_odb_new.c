
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int own_cache; int backends; } ;
typedef TYPE_1__ git_odb ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 int backend_sort_cmp ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git_cache_dispose (int *) ;
 scalar_t__ git_cache_init (int *) ;
 scalar_t__ git_vector_init (int *,int,int ) ;

int git_odb_new(git_odb **out)
{
 git_odb *db = git__calloc(1, sizeof(*db));
 GIT_ERROR_CHECK_ALLOC(db);

 if (git_cache_init(&db->own_cache) < 0) {
  git__free(db);
  return -1;
 }
 if (git_vector_init(&db->backends, 4, backend_sort_cmp) < 0) {
  git_cache_dispose(&db->own_cache);
  git__free(db);
  return -1;
 }

 *out = db;
 GIT_REFCOUNT_INC(db);
 return 0;
}
