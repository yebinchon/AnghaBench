
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int CONFIG_DATA_ENVIRONMENT ;
 int argv_array_push (struct argv_array*,char const* const) ;
 char** local_repo_env ;
 scalar_t__ strcmp (char const* const,int ) ;

__attribute__((used)) static void prepare_submodule_repo_env_no_git_dir(struct argv_array *out)
{
 const char * const *var;

 for (var = local_repo_env; *var; var++) {
  if (strcmp(*var, CONFIG_DATA_ENVIRONMENT))
   argv_array_push(out, *var);
 }
}
