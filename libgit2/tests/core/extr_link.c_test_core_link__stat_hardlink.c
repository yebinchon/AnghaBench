
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
 int clar__skip () ;
 int do_hardlink (char*,char*) ;
 int p_stat (char*,struct stat*) ;
 int should_run () ;

void test_core_link__stat_hardlink(void)
{
 struct stat st;

 if (!should_run())
  clar__skip();

 cl_git_rewritefile("stat_hardlink1", "This file has many names!\n");
 do_hardlink("stat_hardlink1", "stat_hardlink2");

 cl_must_pass(p_stat("stat_hardlink1", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert_equal_i(26, st.st_size);

 cl_must_pass(p_stat("stat_hardlink2", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert_equal_i(26, st.st_size);
}
