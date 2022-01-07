
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ refcount; } ;
typedef TYPE_2__ git_refcount ;
typedef int git_odb ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_odb_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_odb (int **,int *) ;
 int git_repository_open (int **,int ) ;

void test_repo_getters__retrieving_the_odb_honors_the_refcount(void)
{
 git_odb *odb;
 git_repository *repo;

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));

 cl_git_pass(git_repository_odb(&odb, repo));
 cl_assert(((git_refcount *)odb)->refcount.val == 2);

 git_repository_free(repo);
 cl_assert(((git_refcount *)odb)->refcount.val == 1);

 git_odb_free(odb);
}
