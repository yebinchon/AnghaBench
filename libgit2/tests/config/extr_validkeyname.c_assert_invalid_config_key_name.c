
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int cfg ;
 int cl_git_fail_with (int ,int ) ;
 int git_config_delete_entry (int ,char const*) ;
 int git_config_get_multivar_foreach (int ,char const*,char*,int *,int *) ;
 int git_config_get_string_buf (int *,int ,char const*) ;
 int git_config_set_multivar (int ,char const*,char*,char*) ;
 int git_config_set_string (int ,char const*,char*) ;

__attribute__((used)) static void assert_invalid_config_key_name(const char *name)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_fail_with(git_config_get_string_buf(&buf, cfg, name),
  GIT_EINVALIDSPEC);
 cl_git_fail_with(git_config_set_string(cfg, name, "42"),
  GIT_EINVALIDSPEC);
 cl_git_fail_with(git_config_delete_entry(cfg, name),
  GIT_EINVALIDSPEC);
 cl_git_fail_with(git_config_get_multivar_foreach(cfg, name, "*", ((void*)0), ((void*)0)),
  GIT_EINVALIDSPEC);
 cl_git_fail_with(git_config_set_multivar(cfg, name, "*", "42"),
  GIT_EINVALIDSPEC);
}
