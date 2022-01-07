
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 int GIT_MKDIR_CHMOD ;
 int GIT_MKDIR_CHMOD_PATH ;
 int GIT_MKDIR_PATH ;
 int check_mode (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int ,int *) ;
 int cleanup_chmod_root ;
 int * git__malloc (int) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_futils_mkdir_relative (char*,char*,int,int,int *) ;
 int git_path_lstat (char*,struct stat*) ;
 int p_umask (int) ;

void test_core_mkdir__chmods(void)
{
 struct stat st;
 mode_t *old = git__malloc(sizeof(mode_t));
 *old = p_umask(022);

 cl_set_cleanup(cleanup_chmod_root, old);

 cl_git_pass(git_futils_mkdir("r", 0777, 0));

 cl_git_pass(git_futils_mkdir_relative("mode/is/important", "r", 0777, GIT_MKDIR_PATH, ((void*)0)));

 cl_git_pass(git_path_lstat("r/mode", &st));
 check_mode(0755, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode/is", &st));
 check_mode(0755, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode/is/important", &st));
 check_mode(0755, st.st_mode);

 cl_git_pass(git_futils_mkdir_relative("mode2/is2/important2", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD, ((void*)0)));

 cl_git_pass(git_path_lstat("r/mode2", &st));
 check_mode(0755, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode2/is2", &st));
 check_mode(0755, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode2/is2/important2", &st));
 check_mode(0777, st.st_mode);

 cl_git_pass(git_futils_mkdir_relative("mode3/is3/important3", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD_PATH, ((void*)0)));

 cl_git_pass(git_path_lstat("r/mode3", &st));
 check_mode(0777, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode3/is3", &st));
 check_mode(0777, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode3/is3/important3", &st));
 check_mode(0777, st.st_mode);



 cl_git_pass(git_futils_mkdir_relative("mode/is/important", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD, ((void*)0)));

 cl_git_pass(git_path_lstat("r/mode", &st));
 check_mode(0755, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode/is", &st));
 check_mode(0755, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode/is/important", &st));
 check_mode(0777, st.st_mode);



 cl_git_pass(git_futils_mkdir_relative("mode2/is2/important2.1", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD_PATH, ((void*)0)));

 cl_git_pass(git_path_lstat("r/mode2", &st));
 check_mode(0777, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode2/is2", &st));
 check_mode(0777, st.st_mode);
 cl_git_pass(git_path_lstat("r/mode2/is2/important2.1", &st));
 check_mode(0777, st.st_mode);
}
