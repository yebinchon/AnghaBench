
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** affected ;
 int cl_git_fail (int ) ;
 int merge_dirty_files (char**) ;

void test_merge_workdir_dirty__affected_dirty_files_disallowed(void)
{
 char **files;
 size_t i;

 for (i = 0, files = affected[i]; files[0]; files = affected[++i])
  cl_git_fail(merge_dirty_files(files));
}
