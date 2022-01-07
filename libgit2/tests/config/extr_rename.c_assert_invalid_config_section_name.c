
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_EINVALIDSPEC ;
 int cl_git_fail_with (int ,int ) ;
 int git_config_rename_section (int *,char*,char const*) ;

__attribute__((used)) static void assert_invalid_config_section_name(
 git_repository *repo, const char *name)
{
 cl_git_fail_with(
  git_config_rename_section(repo, "branch.remoteless", name),
  GIT_EINVALIDSPEC);
}
