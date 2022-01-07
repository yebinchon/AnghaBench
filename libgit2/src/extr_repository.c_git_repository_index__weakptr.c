
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * _index; int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_index ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_INDEX_CAPABILITY_FROM_OWNER ;
 int GIT_INDEX_FILE ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int assert (int) ;
 int * git__compare_and_swap (int **,int *,int *) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_index_free (int *) ;
 int git_index_open (int **,int ) ;
 int git_index_set_caps (int *,int ) ;

int git_repository_index__weakptr(git_index **out, git_repository *repo)
{
 int error = 0;

 assert(out && repo);

 if (repo->_index == ((void*)0)) {
  git_buf index_path = GIT_BUF_INIT;
  git_index *index;

  if ((error = git_buf_joinpath(&index_path, repo->gitdir, GIT_INDEX_FILE)) < 0)
   return error;

  error = git_index_open(&index, index_path.ptr);
  if (!error) {
   GIT_REFCOUNT_OWN(index, repo);

   index = git__compare_and_swap(&repo->_index, ((void*)0), index);
   if (index != ((void*)0)) {
    GIT_REFCOUNT_OWN(index, ((void*)0));
    git_index_free(index);
   }

   error = git_index_set_caps(repo->_index,
                              GIT_INDEX_CAPABILITY_FROM_OWNER);
  }

  git_buf_dispose(&index_path);
 }

 *out = repo->_index;
 return error;
}
