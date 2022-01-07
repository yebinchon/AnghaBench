
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** affected ;
 int cl_git_fail (int ) ;
 int merge_staged_files (char**) ;
 char*** unaffected ;

void test_merge_workdir_dirty__staged_files_in_index_disallowed(void)
{
 char **files;
 size_t i;

 for (i = 0, files = unaffected[i]; files[0]; files = unaffected[++i])
  cl_git_fail(merge_staged_files(files));

 for (i = 0, files = affected[i]; files[0]; files = affected[++i])
  cl_git_fail(merge_staged_files(files));
}
