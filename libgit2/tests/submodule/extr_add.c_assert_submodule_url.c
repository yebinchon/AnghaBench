
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert_config_entry_value (int ,int ,char const*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;

__attribute__((used)) static void assert_submodule_url(const char* name, const char *url)
{
 git_buf key = GIT_BUF_INIT;


 cl_git_pass(git_buf_printf(&key, "submodule.%s.url", name));
 assert_config_entry_value(g_repo, git_buf_cstr(&key), url);

 git_buf_dispose(&key);
}
