
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_bare; scalar_t__ is_worktree; } ;
typedef TYPE_1__ git_repository ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 TYPE_1__* repository_alloc () ;

int git_repository_new(git_repository **out)
{
 git_repository *repo;

 *out = repo = repository_alloc();
 GIT_ERROR_CHECK_ALLOC(repo);

 repo->is_bare = 1;
 repo->is_worktree = 0;

 return 0;
}
