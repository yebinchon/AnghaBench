
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_pathspec_match_list ;
typedef int git_pathspec ;
typedef int git_index ;


 int ARRAY_SIZE (int ) ;
 int GIT_PATHSPEC_FIND_FAILURES ;
 int GIT_PATHSPEC_IGNORE_CASE ;
 int GIT_PATHSPEC_USE_CASE ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_pathspec_free (int *) ;
 int git_pathspec_match_index (int **,int *,int,int *) ;
 int git_pathspec_match_list_entrycount (int *) ;
 int git_pathspec_match_list_failed_entrycount (int *) ;
 int git_pathspec_match_list_free (int *) ;
 int git_pathspec_new (int **,TYPE_1__*) ;
 int git_repository_index (int **,int ) ;
 int str1 ;

void test_repo_pathspec__index1(void)
{
}
