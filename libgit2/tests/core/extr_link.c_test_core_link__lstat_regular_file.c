
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
 int p_stat (char*,struct stat*) ;

void test_core_link__lstat_regular_file(void)
{
 struct stat st;

 cl_git_rewritefile("lstat_regfile", "This is a regular file!\n");

 cl_must_pass(p_stat("lstat_regfile", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert_equal_i(24, st.st_size);
}
