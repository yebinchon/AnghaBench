
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char const*,char const*) ;
 char* git_path_topdir (char const*) ;

__attribute__((used)) static void
check_topdir(const char *A, const char *B)
{
 const char *dir;

 cl_assert((dir = git_path_topdir(A)) != ((void*)0));
 cl_assert_equal_s(B, dir);
}
