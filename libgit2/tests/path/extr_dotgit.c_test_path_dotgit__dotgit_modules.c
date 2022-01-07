
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (char**) ;
 int GIT_PATH_FS_GENERIC ;
 int GIT_PATH_GITFILE_GITMODULES ;
 int cl_assert_equal_i (int,scalar_t__) ;
 int cl_fail (char const*) ;
 scalar_t__ git_path_is_gitfile (char const*,int ,int ,int ) ;
 char** gitmodules_altnames ;
 char** gitmodules_not_altnames ;
 int strlen (char const*) ;

void test_path_dotgit__dotgit_modules(void)
{
 size_t i;

 cl_assert_equal_i(1, git_path_is_gitfile(".gitmodules", strlen(".gitmodules"), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC));
 cl_assert_equal_i(1, git_path_is_gitfile(".git\xe2\x80\x8cmodules", strlen(".git\xe2\x80\x8cmodules"), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC));

 for (i = 0; i < ARRAY_SIZE(gitmodules_altnames); i++) {
  const char *name = gitmodules_altnames[i];
  if (!git_path_is_gitfile(name, strlen(name), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC))
   cl_fail(name);
 }

 for (i = 0; i < ARRAY_SIZE(gitmodules_not_altnames); i++) {
  const char *name = gitmodules_not_altnames[i];
  if (git_path_is_gitfile(name, strlen(name), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC))
   cl_fail(name);
 }
}
