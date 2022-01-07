
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_object ;
typedef int git_index ;


 int GIT_EAMBIGUOUS ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_object_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_revparse_single (int **,int *,char*) ;

void test_refs_revparse__a_not_precise_enough_objectid_returns_EAMBIGUOUS(void)
{
 git_repository *repo;
 git_index *index;
 git_object *obj;

 repo = cl_git_sandbox_init("testrepo");

 cl_git_mkfile("testrepo/one.txt", "aabqhq\n");
 cl_git_mkfile("testrepo/two.txt", "aaazvc\n");

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, "one.txt"));
 cl_git_pass(git_index_add_bypath(index, "two.txt"));

 cl_git_fail_with(git_revparse_single(&obj, repo, "dea509d0"), GIT_EAMBIGUOUS);

 cl_git_pass(git_revparse_single(&obj, repo, "dea509d09"));

 git_object_free(obj);
 git_index_free(index);
 cl_git_sandbox_cleanup();
}
