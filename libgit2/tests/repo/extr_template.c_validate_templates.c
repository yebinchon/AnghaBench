
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert_hooks_match (char const*,char const*,char*,int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_get_bool (int *,char*) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 char const* git_repository_path (int *) ;

__attribute__((used)) static void validate_templates(git_repository *repo, const char *template_path)
{
 git_buf path = GIT_BUF_INIT, expected = GIT_BUF_INIT, actual = GIT_BUF_INIT;
 int filemode;

 cl_git_pass(git_buf_joinpath(&path, template_path, "description"));
 cl_git_pass(git_futils_readbuffer(&expected, path.ptr));

 git_buf_clear(&path);

 cl_git_pass(git_buf_joinpath(&path, git_repository_path(repo), "description"));
 cl_git_pass(git_futils_readbuffer(&actual, path.ptr));

 cl_assert_equal_s(expected.ptr, actual.ptr);

 filemode = cl_repo_get_bool(repo, "core.filemode");

 assert_hooks_match(
  template_path, git_repository_path(repo),
  "hooks/update.sample", filemode);
 assert_hooks_match(
  template_path, git_repository_path(repo),
  "hooks/link.sample", filemode);
 assert_hooks_match(
  template_path, git_repository_path(repo),
  "hooks/.dotfile", filemode);

 git_buf_dispose(&expected);
 git_buf_dispose(&actual);
 git_buf_dispose(&path);
}
