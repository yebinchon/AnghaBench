
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_ENOTFOUND ;
 int GIT_OPT_GET_SEARCH_PATH ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int GIT_PATH_LIST_SEPARATOR ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (TYPE_1__*,char const*) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__prefixcmp (TYPE_1__*,char const*) ;
 scalar_t__ git__suffixcmp (TYPE_1__*,char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join (TYPE_1__*,int ,char const*,char const*) ;
 int git_buf_sets (TYPE_1__*,char const*) ;
 int git_libgit2_opts (int ,int ,TYPE_1__*) ;
 int git_sysdir_find_global_file (TYPE_1__*,char const*) ;

__attribute__((used)) static void check_global_searchpath(
 const char *path, int position, const char *file, git_buf *temp)
{
 git_buf out = GIT_BUF_INIT;


 if (position < 0)
  cl_git_pass(git_buf_join(temp, GIT_PATH_LIST_SEPARATOR, path, "$PATH"));
 else if (position > 0)
  cl_git_pass(git_buf_join(temp, GIT_PATH_LIST_SEPARATOR, "$PATH", path));
 else
  cl_git_pass(git_buf_sets(temp, path));

 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, temp->ptr));


 cl_git_pass(git_libgit2_opts(
  GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, &out));

 if (position < 0)
  cl_assert(git__prefixcmp(out.ptr, path) == 0);
 else if (position > 0)
  cl_assert(git__suffixcmp(out.ptr, path) == 0);
 else
  cl_assert_equal_s(out.ptr, path);


 cl_git_pass(git_sysdir_find_global_file(temp, file));


 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, ((void*)0)));
 cl_assert_equal_i(
  GIT_ENOTFOUND, git_sysdir_find_global_file(temp, file));

 git_buf_dispose(&out);
}
