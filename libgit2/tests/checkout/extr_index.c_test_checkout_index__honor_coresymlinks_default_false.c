
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_file_contents (char*,char*) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 scalar_t__ git_path_supports_symlinks (char*) ;
 int p_mkdir (char*,int) ;
 int populate_symlink_workdir () ;

void test_checkout_index__honor_coresymlinks_default_false(void)
{
 cl_must_pass(p_mkdir("symlink", 0777));
 if (git_path_supports_symlinks("symlink/test"))
  cl_skip();


 populate_symlink_workdir();
 check_file_contents("./symlink/link_to_new.txt", "new.txt");
}
