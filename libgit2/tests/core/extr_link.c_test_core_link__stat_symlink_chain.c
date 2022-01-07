
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
 int do_symlink (char*,char*,int ) ;
 int p_stat (char*,struct stat*) ;
 int should_run () ;

void test_core_link__stat_symlink_chain(void)
{
 struct stat st;

 if (!should_run())
  clar__skip();

 cl_git_rewritefile("stat_final_target", "Final target of some symbolic links...\n");
 do_symlink("stat_final_target", "stat_chain_3", 0);
 do_symlink("stat_chain_3", "stat_chain_2", 0);
 do_symlink("stat_chain_2", "stat_chain_1", 0);

 cl_must_pass(p_stat("stat_chain_1", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert_equal_i(39, st.st_size);
}
