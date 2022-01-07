
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_must_pass (int ) ;
 int git_path_is_empty_dir (char*) ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;
 int p_unlink (char*) ;

void test_core_dirent__empty_dir(void)
{
 cl_must_pass(p_mkdir("empty_dir", 0777));
 cl_assert(git_path_is_empty_dir("empty_dir"));

 cl_git_mkfile("empty_dir/content", "whatever\n");
 cl_assert(!git_path_is_empty_dir("empty_dir"));
 cl_assert(!git_path_is_empty_dir("empty_dir/content"));

 cl_must_pass(p_unlink("empty_dir/content"));

 cl_must_pass(p_mkdir("empty_dir/content", 0777));
 cl_assert(!git_path_is_empty_dir("empty_dir"));
 cl_assert(git_path_is_empty_dir("empty_dir/content"));

 cl_must_pass(p_rmdir("empty_dir/content"));

 cl_must_pass(p_rmdir("empty_dir"));
}
