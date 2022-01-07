
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 int GIT_MKDIR_PATH ;
 int check_mode (int,int ) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_is_chmod_supported () ;
 int cl_must_pass (int ) ;
 int cl_set_cleanup (int ,int *) ;
 int cleanup_chmod_root ;
 int * git__malloc (int) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_futils_mkdir_relative (char*,char*,int,int ,int *) ;
 int git_path_lstat (char*,struct stat*) ;
 int p_chmod (char*,int) ;
 int p_umask (int) ;

void test_core_mkdir__mkdir_path_inside_unwriteable_parent(void)
{
 struct stat st;
 mode_t *old;


 if (!cl_is_chmod_supported())
  return;

 cl_assert((old = git__malloc(sizeof(mode_t))) != ((void*)0));
 *old = p_umask(022);
 cl_set_cleanup(cleanup_chmod_root, old);

 cl_git_pass(git_futils_mkdir("r", 0777, 0));
 cl_git_pass(git_futils_mkdir_relative("mode/is/important", "r", 0777, GIT_MKDIR_PATH, ((void*)0)));
 cl_git_pass(git_path_lstat("r/mode", &st));
 check_mode(0755, st.st_mode);

 cl_must_pass(p_chmod("r/mode", 0111));
 cl_git_pass(git_path_lstat("r/mode", &st));
 check_mode(0111, st.st_mode);

 cl_git_pass(
  git_futils_mkdir_relative("mode/is/okay/inside", "r", 0777, GIT_MKDIR_PATH, ((void*)0)));
 cl_git_pass(git_path_lstat("r/mode/is/okay/inside", &st));
 check_mode(0755, st.st_mode);

 cl_must_pass(p_chmod("r/mode", 0777));
}
