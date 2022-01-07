
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;


 int cl_assert_at_line (int ,char const*,int) ;
 int cl_git_report_failure (int,int ,char const*,int,char const*) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int *,char const*) ;

void assert__submodule_exists(
 git_repository *repo, const char *name,
 const char *msg, const char *file, int line)
{
 git_submodule *sm;
 int error = git_submodule_lookup(&sm, repo, name);
 if (error)
  cl_git_report_failure(error, 0, file, line, msg);
 cl_assert_at_line(sm != ((void*)0), file, line);
 git_submodule_free(sm);
}
