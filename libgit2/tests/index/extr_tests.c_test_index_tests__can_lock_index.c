
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_indexwriter ;
typedef int git_index ;


 int GIT_ELOCKED ;
 int GIT_INDEXWRITER_INIT ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_indexwriter_cleanup (int *) ;
 int git_indexwriter_commit (int *) ;
 int git_indexwriter_init (int *,int *) ;
 int git_repository_index (int **,int *) ;

void test_index_tests__can_lock_index(void)
{
 git_repository *repo;
 git_index *index;
 git_indexwriter one = GIT_INDEXWRITER_INIT,
  two = GIT_INDEXWRITER_INIT;

 repo = cl_git_sandbox_init("testrepo.git");

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_indexwriter_init(&one, index));

 cl_git_fail_with(GIT_ELOCKED, git_indexwriter_init(&two, index));
 cl_git_fail_with(GIT_ELOCKED, git_index_write(index));

 cl_git_pass(git_indexwriter_commit(&one));

 cl_git_pass(git_index_write(index));

 git_indexwriter_cleanup(&one);
 git_indexwriter_cleanup(&two);
 git_index_free(index);
 cl_git_sandbox_cleanup();
}
