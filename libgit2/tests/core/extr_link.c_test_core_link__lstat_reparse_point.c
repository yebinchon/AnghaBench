
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;


 int S_ISREG (int ) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int ) ;
 int do_custom_reparse (char*) ;
 int p_lstat (char*,struct stat*) ;

void test_core_link__lstat_reparse_point(void)
{
}
