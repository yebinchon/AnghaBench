
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_9__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_reopen () ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char const*,char const*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (TYPE_1__*,int *,char*) ;
 int git_repository_config (int **,int ) ;

__attribute__((used)) static void assert_condition_includes(const char *keyword, const char *path, bool expected)
{
 git_buf buf = GIT_BUF_INIT;
 git_config *cfg;

 cl_git_pass(git_buf_printf(&buf, "[includeIf \"%s:%s\"]\n", keyword, path));
 cl_git_pass(git_buf_puts(&buf, "path = other\n"));

 cl_git_mkfile("empty_standard_repo/.git/config", buf.ptr);
 cl_git_mkfile("empty_standard_repo/.git/other", "[foo]\nbar=baz\n");
 _repo = cl_git_sandbox_reopen();

 cl_git_pass(git_repository_config(&cfg, _repo));

 if (expected) {
  git_buf_clear(&buf);
  cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar"));
  cl_assert_equal_s("baz", git_buf_cstr(&buf));
 } else {
  cl_git_fail_with(GIT_ENOTFOUND,
     git_config_get_string_buf(&buf, cfg, "foo.bar"));
 }

 git_buf_dispose(&buf);
 git_config_free(cfg);
}
