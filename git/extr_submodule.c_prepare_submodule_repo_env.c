
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int DEFAULT_GIT_DIR_ENVIRONMENT ;
 int GIT_DIR_ENVIRONMENT ;
 int argv_array_pushf (struct argv_array*,char*,int ,int ) ;
 int prepare_submodule_repo_env_no_git_dir (struct argv_array*) ;

void prepare_submodule_repo_env(struct argv_array *out)
{
 prepare_submodule_repo_env_no_git_dir(out);
 argv_array_pushf(out, "%s=%s", GIT_DIR_ENVIRONMENT,
    DEFAULT_GIT_DIR_ENVIRONMENT);
}
