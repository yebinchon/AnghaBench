
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _odb; } ;
typedef TYPE_1__ git_repository ;
typedef int git_odb ;


 int GIT_REFCOUNT_INC (int *) ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int * git__swap (int ,int *) ;
 int git_odb_free (int *) ;

__attribute__((used)) static void set_odb(git_repository *repo, git_odb *odb)
{
 if (odb) {
  GIT_REFCOUNT_OWN(odb, repo);
  GIT_REFCOUNT_INC(odb);
 }

 if ((odb = git__swap(repo->_odb, odb)) != ((void*)0)) {
  GIT_REFCOUNT_OWN(odb, ((void*)0));
  git_odb_free(odb);
 }
}
