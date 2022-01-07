
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct compare_data {char const* member_1; char const* member_2; char* dirname; int * member_0; } ;
struct TYPE_13__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
struct TYPE_14__ {char* ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_string (int ,char*,char const*) ;
 int compare_file ;
 TYPE_2__ expected_fixture ;
 int g_repo ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,char*,char*) ;
 int git_buf_printf (TYPE_2__*,char*,char const*) ;
 int git_buf_putc (TYPE_2__*,char const) ;
 int git_buf_puts (TYPE_2__*,char const*) ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_path_direach (TYPE_2__*,int ,int ,struct compare_data*) ;
 char* systype ;

__attribute__((used)) static void test_checkout(const char *autocrlf, const char *attrs)
{
 git_buf attrbuf = GIT_BUF_INIT;
 git_buf expected_dirname = GIT_BUF_INIT;
 git_buf systype_and_direction = GIT_BUF_INIT;
 git_buf sandboxname = GIT_BUF_INIT;
 git_buf reponame = GIT_BUF_INIT;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 struct compare_data compare_data = { ((void*)0), autocrlf, attrs };
 const char *c;

 cl_git_pass(git_buf_puts(&reponame, "crlf"));

 cl_git_pass(git_buf_puts(&systype_and_direction, systype));
 cl_git_pass(git_buf_puts(&systype_and_direction, "_to_workdir"));

 cl_git_pass(git_buf_puts(&sandboxname, "autocrlf_"));
 cl_git_pass(git_buf_puts(&sandboxname, autocrlf));

 if (*attrs) {
  cl_git_pass(git_buf_puts(&sandboxname, ","));

  for (c = attrs; *c; c++) {
   if (*c == ' ')
    cl_git_pass(git_buf_putc(&sandboxname, ','));
   else if (*c == '=')
    cl_git_pass(git_buf_putc(&sandboxname, '_'));
   else
    cl_git_pass(git_buf_putc(&sandboxname, *c));
  }

  cl_git_pass(git_buf_printf(&attrbuf, "* %s\n", attrs));
  cl_git_mkfile("crlf/.gitattributes", attrbuf.ptr);
 }

 cl_repo_set_string(g_repo, "core.autocrlf", autocrlf);

 cl_git_pass(git_buf_joinpath(&expected_dirname, systype_and_direction.ptr, sandboxname.ptr));
 cl_git_pass(git_buf_joinpath(&expected_fixture, "crlf_data", expected_dirname.ptr));
 cl_fixture_sandbox(expected_fixture.ptr);

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_checkout_head(g_repo, &opts));

 compare_data.dirname = sandboxname.ptr;
 cl_git_pass(git_path_direach(&reponame, 0, compare_file, &compare_data));

 cl_fixture_cleanup(expected_fixture.ptr);
 git_buf_dispose(&expected_fixture);

 git_buf_dispose(&attrbuf);
 git_buf_dispose(&expected_fixture);
 git_buf_dispose(&expected_dirname);
 git_buf_dispose(&sandboxname);
 git_buf_dispose(&systype_and_direction);
 git_buf_dispose(&reponame);
}
