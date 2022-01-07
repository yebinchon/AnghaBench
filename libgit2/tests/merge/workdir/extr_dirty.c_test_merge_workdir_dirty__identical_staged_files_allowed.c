
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int git_index_write (int ) ;
 int merge_branch () ;
 int repo ;
 int repo_index ;
 char*** result_contents ;
 int set_core_autocrlf_to (int ,int) ;
 int stage_content (char**) ;

void test_merge_workdir_dirty__identical_staged_files_allowed(void)
{
 char **content;
 size_t i;

 set_core_autocrlf_to(repo, 0);

 for (i = 0, content = result_contents[i]; content[0]; content = result_contents[++i]) {
  stage_content(content);

  cl_git_pass(git_index_write(repo_index));
  cl_git_pass(merge_branch());
 }
}
