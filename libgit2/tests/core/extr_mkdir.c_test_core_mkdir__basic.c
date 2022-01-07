
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_MKDIR_EXCL ;
 int GIT_MKDIR_PATH ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int ,int *) ;
 int cleanup_basic_dirs ;
 int git_futils_mkdir (char*,int,int) ;
 int git_path_isdir (char*) ;

void test_core_mkdir__basic(void)
{
 cl_set_cleanup(cleanup_basic_dirs, ((void*)0));


 cl_assert(!git_path_isdir("d0"));
 cl_git_pass(git_futils_mkdir("d0", 0755, 0));
 cl_assert(git_path_isdir("d0"));


 cl_assert(!git_path_isdir("d1"));
 cl_git_pass(git_futils_mkdir("d1/d1.1/d1.2", 0755, GIT_MKDIR_PATH));
 cl_assert(git_path_isdir("d1"));
 cl_assert(git_path_isdir("d1/d1.1"));
 cl_assert(git_path_isdir("d1/d1.1/d1.2"));


 cl_assert(!git_path_isdir("d2"));
 cl_git_pass(git_futils_mkdir("d2", 0755, GIT_MKDIR_EXCL));
 cl_assert(git_path_isdir("d2"));


 cl_git_fail(git_futils_mkdir("d2", 0755, GIT_MKDIR_EXCL));


 cl_assert(!git_path_isdir("d3"));
 cl_git_pass(git_futils_mkdir("d3/d3.1/d3.2", 0755, GIT_MKDIR_PATH | GIT_MKDIR_EXCL));
 cl_assert(git_path_isdir("d3"));
 cl_assert(git_path_isdir("d3/d3.1/d3.2"));


 cl_git_fail(git_futils_mkdir("d3/d3.1/d3.2", 0755, GIT_MKDIR_PATH | GIT_MKDIR_EXCL));



 cl_assert(!git_path_isdir("d4"));
 cl_git_pass(git_futils_mkdir("d4/d4.1/", 0755, GIT_MKDIR_PATH));
 cl_assert(git_path_isdir("d4/d4.1"));
}
