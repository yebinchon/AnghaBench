
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int GIT_DIR_ENVIRONMENT ;
 int argv_array_pushf (struct argv_array*,char*,int ) ;
 int prepare_submodule_repo_env_no_git_dir (struct argv_array*) ;

__attribute__((used)) static void prepare_submodule_repo_env_in_gitdir(struct argv_array *out)
{
 prepare_submodule_repo_env_no_git_dir(out);
 argv_array_pushf(out, "%s=.", GIT_DIR_ENVIRONMENT);
}
