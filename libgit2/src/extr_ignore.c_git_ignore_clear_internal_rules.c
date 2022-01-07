
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_attr_file ;


 int GIT_IGNORE_DEFAULT_RULES ;
 int get_internal_ignores (int **,int *) ;
 int git_attr_file__clear_rules (int *,int) ;
 int git_attr_file__free (int *) ;
 int parse_ignore_file (int *,int *,int ,int) ;

int git_ignore_clear_internal_rules(git_repository *repo)
{
 int error;
 git_attr_file *ign_internal;

 if ((error = get_internal_ignores(&ign_internal, repo)) < 0)
  return error;

 if (!(error = git_attr_file__clear_rules(ign_internal, 1)))
  error = parse_ignore_file(
    repo, ign_internal, GIT_IGNORE_DEFAULT_RULES, 0);

 git_attr_file__free(ign_internal);
 return error;
}
