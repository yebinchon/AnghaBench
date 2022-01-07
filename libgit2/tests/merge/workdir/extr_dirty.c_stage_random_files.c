
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int ,char*) ;
 int repo_index ;
 int write_files (char**) ;

__attribute__((used)) static void stage_random_files(char *files[])
{
 char *filename;
 size_t i;

 write_files(files);

 for (i = 0, filename = files[i]; filename; filename = files[++i])
  cl_git_pass(git_index_add_bypath(repo_index, filename));
}
