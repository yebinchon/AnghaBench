
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_repo_get_bool (int ,char*) ;
 int clar__skip () ;
 int g_idx ;
 int g_repo ;
 int git_index_add_bypath (int ,char*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;

void test_index_bypath__add_keeps_existing_case(void)
{
 const git_index_entry *entry;

 if (!cl_repo_get_bool(g_repo, "core.ignorecase"))
  clar__skip();

 cl_git_mkfile("submod2/just_a_dir/file1.txt", "This is a file");
 cl_git_pass(git_index_add_bypath(g_idx, "just_a_dir/file1.txt"));

 cl_assert(entry = git_index_get_bypath(g_idx, "just_a_dir/file1.txt", 0));
 cl_assert_equal_s("just_a_dir/file1.txt", entry->path);

 cl_git_rewritefile("submod2/just_a_dir/file1.txt", "Updated!");
 cl_git_pass(git_index_add_bypath(g_idx, "just_a_dir/FILE1.txt"));

 cl_assert(entry = git_index_get_bypath(g_idx, "just_a_dir/FILE1.txt", 0));
 cl_assert_equal_s("just_a_dir/file1.txt", entry->path);
}
