
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int merge_dirty_files (char**) ;
 char*** unaffected ;

void test_merge_workdir_dirty__unaffected_dirty_files_allowed(void)
{
 char **files;
 size_t i;

 for (i = 0, files = unaffected[i]; files[0]; files = unaffected[++i])
  cl_git_pass(merge_dirty_files(files));
}
