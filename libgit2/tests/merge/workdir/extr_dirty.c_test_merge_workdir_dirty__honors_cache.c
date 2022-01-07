
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** affected ;
 int cl_git_pass (int ) ;
 int merge_differently_filtered_files (char**) ;

void test_merge_workdir_dirty__honors_cache(void)
{
 char **files;
 size_t i;

 for (i = 0, files = affected[i]; files[0]; files = affected[++i])
  cl_git_pass(merge_differently_filtered_files(files));
}
