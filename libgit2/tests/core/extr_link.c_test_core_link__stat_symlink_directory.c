
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int cl_assert (int ) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int do_symlink (char*,char*,int) ;
 int p_mkdir (char*,int) ;
 int p_stat (char*,struct stat*) ;
 int should_run () ;

void test_core_link__stat_symlink_directory(void)
{
 struct stat st;

 if (!should_run())
  clar__skip();

 p_mkdir("stat_dirtarget", 0777);
 do_symlink("stat_dirtarget", "stat_dirlink", 1);

 cl_must_pass(p_stat("stat_dirtarget", &st));
 cl_assert(S_ISDIR(st.st_mode));

 cl_must_pass(p_stat("stat_dirlink", &st));
 cl_assert(S_ISDIR(st.st_mode));
}
