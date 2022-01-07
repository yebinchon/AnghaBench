
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int testfile ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ EEXIST ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int check_global_searchpath (int ,int,char*,TYPE_1__*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ errno ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_buf_rtruncate_at_char (TYPE_1__*,char) ;
 int git_path_prettify (TYPE_1__*,char*,int *) ;
 int git_sysdir_find_global_file (TYPE_1__*,char*) ;
 char** home_values ;
 scalar_t__ p_mkdir (char*,int) ;
 int p_rmdir (char*) ;
 int p_unlink (int ) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

void test_core_env__2(void)
{
 git_buf path = GIT_BUF_INIT, found = GIT_BUF_INIT;
 char testfile[16], tidx = '0';
 char **val;
 const char *testname = "alternate";
 size_t testlen = strlen(testname);

 strncpy(testfile, testname, sizeof(testfile));
 cl_assert_equal_s(testname, testfile);

 for (val = home_values; *val != ((void*)0); val++) {





  if (p_mkdir(*val, 0777) != 0 && errno != EEXIST) {
   *val = "";
   continue;
  }

  cl_git_pass(git_path_prettify(&path, *val, ((void*)0)));




  testfile[testlen] = tidx++;
  cl_git_pass(git_buf_joinpath(&path, path.ptr, testfile));
  cl_git_mkfile(path.ptr, "find me");
  git_buf_rtruncate_at_char(&path, '/');


  cl_assert_equal_i(
   GIT_ENOTFOUND, git_sysdir_find_global_file(&found, testfile));


  check_global_searchpath(path.ptr, 0, testfile, &found);
  check_global_searchpath(path.ptr, -1, testfile, &found);
  check_global_searchpath(path.ptr, 1, testfile, &found);


  cl_git_pass(git_buf_joinpath(&path, path.ptr, testfile));
  (void)p_unlink(path.ptr);
  (void)p_rmdir(*val);
 }

 git_buf_dispose(&path);
 git_buf_dispose(&found);
}
