
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _index; } ;
typedef TYPE_1__ git_repository ;
typedef int git_index ;


 int GIT_REFCOUNT_INC (int *) ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int * git__swap (int ,int *) ;
 int git_index_free (int *) ;

__attribute__((used)) static void set_index(git_repository *repo, git_index *index)
{
 if (index) {
  GIT_REFCOUNT_OWN(index, repo);
  GIT_REFCOUNT_INC(index);
 }

 if ((index = git__swap(repo->_index, index)) != ((void*)0)) {
  GIT_REFCOUNT_OWN(index, ((void*)0));
  git_index_free(index);
 }
}
