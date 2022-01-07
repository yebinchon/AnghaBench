
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_4__ {int oldest_commit; } ;
typedef TYPE_1__ git_blame_options ;


 TYPE_1__ GIT_BLAME_OPTIONS_INIT ;
 int check_blame_hunk_index (int ,int ,int,int,int,int,char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int g_blame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,TYPE_1__*) ;
 int git_blame_get_hunk_count (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_oid_cpy (int *,int ) ;
 int git_repository_open (int *,int ) ;
 int git_revparse_single (int **,int ,char*) ;

void test_blame_simple__can_restrict_to_newish_commits(void)
{
 git_blame_options opts = GIT_BLAME_OPTIONS_INIT;

 cl_git_pass(git_repository_open(&g_repo, cl_fixture("testrepo.git")));

 {
  git_object *obj;
  cl_git_pass(git_revparse_single(&obj, g_repo, "be3563a"));
  git_oid_cpy(&opts.oldest_commit, git_object_id(obj));
  git_object_free(obj);
 }

 cl_git_pass(git_blame_file(&g_blame, g_repo, "branch_file.txt", &opts));

 cl_assert_equal_i(2, git_blame_get_hunk_count(g_blame));
 check_blame_hunk_index(g_repo, g_blame, 0, 1, 1, 1, "be3563a", "branch_file.txt");
 check_blame_hunk_index(g_repo, g_blame, 1, 2, 1, 0, "a65fedf", "branch_file.txt");
}
