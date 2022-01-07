
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_attr_file ;


 int get_internal_ignores (int **,int *) ;
 int git_attr_file__free (int *) ;
 int parse_ignore_file (int *,int *,char const*,int) ;

int git_ignore_add_rule(git_repository *repo, const char *rules)
{
 int error;
 git_attr_file *ign_internal = ((void*)0);

 if ((error = get_internal_ignores(&ign_internal, repo)) < 0)
  return error;

 error = parse_ignore_file(repo, ign_internal, rules, 0);
 git_attr_file__free(ign_internal);

 return error;
}
