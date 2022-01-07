
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * _odb; } ;
typedef TYPE_1__ git_repository ;
typedef int git_odb ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ODB_CAP_FROM_OWNER ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int GIT_REPOSITORY_ITEM_OBJECTS ;
 int assert (int) ;
 int * git__compare_and_swap (int **,int *,int *) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_odb__add_default_backends (int *,int ,int ,int ) ;
 int git_odb__set_caps (int *,int ) ;
 int git_odb_free (int *) ;
 int git_odb_new (int **) ;
 int git_repository_item_path (TYPE_2__*,TYPE_1__*,int ) ;

int git_repository_odb__weakptr(git_odb **out, git_repository *repo)
{
 int error = 0;

 assert(repo && out);

 if (repo->_odb == ((void*)0)) {
  git_buf odb_path = GIT_BUF_INIT;
  git_odb *odb;

  if ((error = git_repository_item_path(&odb_path, repo,
    GIT_REPOSITORY_ITEM_OBJECTS)) < 0 ||
   (error = git_odb_new(&odb)) < 0)
   return error;

  GIT_REFCOUNT_OWN(odb, repo);

  if ((error = git_odb__set_caps(odb, GIT_ODB_CAP_FROM_OWNER)) < 0 ||
   (error = git_odb__add_default_backends(odb, odb_path.ptr, 0, 0)) < 0) {
   git_odb_free(odb);
   return error;
  }

  odb = git__compare_and_swap(&repo->_odb, ((void*)0), odb);
  if (odb != ((void*)0)) {
   GIT_REFCOUNT_OWN(odb, ((void*)0));
   git_odb_free(odb);
  }

  git_buf_dispose(&odb_path);
 }

 *out = repo->_odb;
 return error;
}
