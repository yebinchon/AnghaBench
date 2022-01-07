
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int cl_must_fail (int ) ;
 int clar__skip () ;
 int do_symlink (char*,char*,int ) ;
 int p_stat (char*,struct stat*) ;
 int should_run () ;

void test_core_link__stat_dangling_symlink(void)
{
 struct stat st;

 if (!should_run())
  clar__skip();

 do_symlink("stat_nonexistent", "stat_dangling", 0);

 cl_must_fail(p_stat("stat_nonexistent", &st));
 cl_must_fail(p_stat("stat_dangling", &st));
}
