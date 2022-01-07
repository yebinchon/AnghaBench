
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_topdir (char*,char*) ;
 int cl_assert (int ) ;
 int * git_path_topdir (char*) ;

void test_core_path__02_topdir(void)
{
 check_topdir(".git/", ".git/");
 check_topdir("/.git/", ".git/");
 check_topdir("usr/local/.git/", ".git/");
 check_topdir("./.git/", ".git/");
 check_topdir("/usr/.git/", ".git/");
 check_topdir("/", "/");
 check_topdir("a/", "a/");

 cl_assert(git_path_topdir("/usr/.git") == ((void*)0));
 cl_assert(git_path_topdir(".") == ((void*)0));
 cl_assert(git_path_topdir("") == ((void*)0));
 cl_assert(git_path_topdir("a") == ((void*)0));
}
