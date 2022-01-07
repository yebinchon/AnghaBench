
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;


 int S_ISLNK (int ) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_must_fail (int ) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int do_symlink (char*,char*,int) ;
 int p_lstat (char*,struct stat*) ;
 int should_run () ;
 int strlen (char*) ;

void test_core_link__lstat_dangling_symlink_directory(void)
{
 struct stat st;

 if (!should_run())
  clar__skip();

 do_symlink("lstat_nonexistent", "lstat_dangling_dir", 1);

 cl_must_fail(p_lstat("lstat_nonexistent", &st));

 cl_must_pass(p_lstat("lstat_dangling_dir", &st));
 cl_assert(S_ISLNK(st.st_mode));
 cl_assert_equal_i(strlen("lstat_nonexistent"), st.st_size);
}
