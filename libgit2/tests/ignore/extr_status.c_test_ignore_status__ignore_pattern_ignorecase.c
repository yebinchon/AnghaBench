
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 int GIT_STATUS_IGNORED ;
 int GIT_STATUS_WT_NEW ;
 int cl_assert (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_status_file (unsigned int*,int ,char*) ;

void test_ignore_status__ignore_pattern_ignorecase(void)
{
 unsigned int flags;
 bool ignore_case;
 git_index *index;

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_rewritefile("empty_standard_repo/.gitignore", "a.txt\n");

 cl_git_mkfile("empty_standard_repo/A.txt", "Differs in case");

 cl_git_pass(git_repository_index(&index, g_repo));
 ignore_case = (git_index_caps(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0;
 git_index_free(index);

 cl_git_pass(git_status_file(&flags, g_repo, "A.txt"));
 cl_assert(flags == ignore_case ? GIT_STATUS_IGNORED : GIT_STATUS_WT_NEW);
}
