
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int mode_t ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int CLEAR_FOR_CORE_FILEMODE (int) ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FILEMODE_LINK ;
 int GIT_MODE_TYPE (int) ;
 int GIT_PERMS_FOR_WRITE (int) ;
 int cl_assert (int) ;
 int cl_assert_equal_i_fmt (int,int,char*) ;
 int cl_git_pass (int ) ;
 int g_umask ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char const*) ;
 int git_path_lstat (int ,struct stat*) ;

__attribute__((used)) static void assert_hooks_match(
 const char *template_dir,
 const char *repo_dir,
 const char *hook_path,
 bool core_filemode)
{
 git_buf expected = GIT_BUF_INIT;
 git_buf actual = GIT_BUF_INIT;
 struct stat expected_st, st;

 cl_git_pass(git_buf_joinpath(&expected, template_dir, hook_path));
 cl_git_pass(git_path_lstat(expected.ptr, &expected_st));

 cl_git_pass(git_buf_joinpath(&actual, repo_dir, hook_path));
 cl_git_pass(git_path_lstat(actual.ptr, &st));

 cl_assert(expected_st.st_size == st.st_size);

 if (GIT_MODE_TYPE(expected_st.st_mode) != GIT_FILEMODE_LINK) {
  mode_t expected_mode =
   GIT_MODE_TYPE(expected_st.st_mode) |
   (GIT_PERMS_FOR_WRITE(expected_st.st_mode) & ~g_umask);

  if (!core_filemode) {
   CLEAR_FOR_CORE_FILEMODE(expected_mode);
   CLEAR_FOR_CORE_FILEMODE(st.st_mode);
  }

  cl_assert_equal_i_fmt(expected_mode, st.st_mode, "%07o");
 }

 git_buf_dispose(&expected);
 git_buf_dispose(&actual);
}
