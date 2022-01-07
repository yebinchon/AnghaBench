
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_pathspec_match_list ;
typedef int git_pathspec ;


 int ARRAY_SIZE (int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_pathspec_free (int *) ;
 int git_pathspec_match_list_entry (int *,int) ;
 int git_pathspec_match_list_entrycount (int *) ;
 int git_pathspec_match_list_free (int *) ;
 int git_pathspec_match_workdir (int **,int ,int ,int *) ;
 int git_pathspec_new (int **,TYPE_1__*) ;
 int str4 ;

void test_repo_pathspec__workdir4(void)
{
 git_strarray s;
 git_pathspec *ps;
 git_pathspec_match_list *m;


 s.strings = str4; s.count = ARRAY_SIZE(str4);
 cl_git_pass(git_pathspec_new(&ps, &s));

 cl_git_pass(git_pathspec_match_workdir(&m, g_repo, 0, ps));
 cl_assert_equal_sz(13, git_pathspec_match_list_entrycount(m));
 cl_assert_equal_s("\xE8\xBF\x99", git_pathspec_match_list_entry(m, 12));
 git_pathspec_match_list_free(m);

 git_pathspec_free(ps);
}
