
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_EMPTY_HIERARCHY ;
 int GIT_RMDIR_EMPTY_PARENTS ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 char* empty_tmp_dir ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char*,char*) ;
 int git_buf_rtruncate_at_char (int *,char) ;
 int git_futils_rmdir_r (char*,char*,int) ;
 int git_path_exists (char*) ;
 int git_path_isfile (char*) ;

void test_core_rmdir__can_remove_empty_parents(void)
{
 git_buf file = GIT_BUF_INIT;

 cl_git_pass(
  git_buf_joinpath(&file, empty_tmp_dir, "/one/two_two/three/file.txt"));
 cl_git_mkfile(git_buf_cstr(&file), "dummy");
 cl_assert(git_path_isfile(git_buf_cstr(&file)));

 cl_git_pass(git_futils_rmdir_r("one/two_two/three/file.txt", empty_tmp_dir,
  GIT_RMDIR_REMOVE_FILES | GIT_RMDIR_EMPTY_PARENTS));

 cl_assert(!git_path_exists(git_buf_cstr(&file)));

 git_buf_rtruncate_at_char(&file, '/');
 cl_assert(!git_path_exists(git_buf_cstr(&file)));

 git_buf_rtruncate_at_char(&file, '/');
 cl_assert(!git_path_exists(git_buf_cstr(&file)));

 git_buf_rtruncate_at_char(&file, '/');
 cl_assert(git_path_exists(git_buf_cstr(&file)));

 cl_assert(git_path_exists(empty_tmp_dir) == 1);

 git_buf_dispose(&file);

 cl_git_pass(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY));
}
