
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_size; } ;


 int GIT_CPDIR_COPY_DOTFILES ;
 int GIT_CPDIR_COPY_SYMLINKS ;
 int GIT_CPDIR_CREATE_EMPTY_DIRS ;
 int GIT_CPDIR_LINK_FILES ;
 int GIT_MKDIR_PATH ;
 int GIT_RMDIR_REMOVE_FILES ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int assert_hard_link (char*) ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char const*) ;
 int cl_git_pass (int ) ;
 int git_futils_cp_r (char*,char*,int,int ) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_path_lstat (char*,struct stat*) ;
 scalar_t__ p_symlink (char*,char*) ;
 size_t strlen (char const*) ;

void test_core_copy__tree(void)
{
 struct stat st;
 const char *content = "File content\n";

 cl_git_pass(git_futils_mkdir("src/b", 0775, GIT_MKDIR_PATH));
 cl_git_pass(git_futils_mkdir("src/c/d", 0775, GIT_MKDIR_PATH));
 cl_git_pass(git_futils_mkdir("src/c/e", 0775, GIT_MKDIR_PATH));

 cl_git_mkfile("src/f1", content);
 cl_git_mkfile("src/b/f2", content);
 cl_git_mkfile("src/c/f3", content);
 cl_git_mkfile("src/c/d/f4", content);
 cl_git_mkfile("src/c/d/.f5", content);


 cl_assert(p_symlink("../../b/f2", "src/c/d/l1") == 0);


 cl_assert(git_path_isdir("src"));
 cl_assert(git_path_isdir("src/b"));
 cl_assert(git_path_isdir("src/c/d"));
 cl_assert(git_path_isfile("src/c/d/f4"));



 cl_git_pass(
  git_futils_cp_r("src", "t1", GIT_CPDIR_COPY_SYMLINKS, 0) );

 cl_assert(git_path_isdir("t1"));
 cl_assert(git_path_isdir("t1/b"));
 cl_assert(git_path_isdir("t1/c"));
 cl_assert(git_path_isdir("t1/c/d"));
 cl_assert(!git_path_isdir("t1/c/e"));

 cl_assert(git_path_isfile("t1/f1"));
 cl_assert(git_path_isfile("t1/b/f2"));
 cl_assert(git_path_isfile("t1/c/f3"));
 cl_assert(git_path_isfile("t1/c/d/f4"));
 cl_assert(!git_path_isfile("t1/c/d/.f5"));

 cl_git_pass(git_path_lstat("t1/c/f3", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert(strlen(content) == (size_t)st.st_size);


 cl_git_pass(git_path_lstat("t1/c/d/l1", &st));
 cl_assert(S_ISLNK(st.st_mode));


 cl_git_pass(git_futils_rmdir_r("t1", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_assert(!git_path_isdir("t1"));



 cl_git_pass(
  git_futils_cp_r("src", "t2", GIT_CPDIR_CREATE_EMPTY_DIRS | GIT_CPDIR_COPY_DOTFILES, 0) );

 cl_assert(git_path_isdir("t2"));
 cl_assert(git_path_isdir("t2/b"));
 cl_assert(git_path_isdir("t2/c"));
 cl_assert(git_path_isdir("t2/c/d"));
 cl_assert(git_path_isdir("t2/c/e"));

 cl_assert(git_path_isfile("t2/f1"));
 cl_assert(git_path_isfile("t2/b/f2"));
 cl_assert(git_path_isfile("t2/c/f3"));
 cl_assert(git_path_isfile("t2/c/d/f4"));
 cl_assert(git_path_isfile("t2/c/d/.f5"));


 cl_git_fail(git_path_lstat("t2/c/d/l1", &st));


 cl_git_pass(git_futils_rmdir_r("t2", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_assert(!git_path_isdir("t2"));


 cl_git_pass(git_futils_cp_r("src", "t3", GIT_CPDIR_CREATE_EMPTY_DIRS | GIT_CPDIR_LINK_FILES, 0));
 cl_assert(git_path_isdir("t3"));

 cl_assert(git_path_isdir("t3"));
 cl_assert(git_path_isdir("t3/b"));
 cl_assert(git_path_isdir("t3/c"));
 cl_assert(git_path_isdir("t3/c/d"));
 cl_assert(git_path_isdir("t3/c/e"));

 assert_hard_link("t3/f1");
 assert_hard_link("t3/b/f2");
 assert_hard_link("t3/c/f3");
 assert_hard_link("t3/c/d/f4");


 cl_git_pass(git_futils_rmdir_r("src", ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
