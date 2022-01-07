
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_MAX ;
 int check_file_contents (char*,char*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int create_tmp_global_config (char*,char*,char*) ;
 int git_path_supports_symlinks (char*) ;
 int p_mkdir (char*,int) ;
 int p_readlink (char*,char*,int) ;
 int populate_symlink_workdir () ;
 int strlen (char*) ;

void test_checkout_index__honor_coresymlinks_default_true(void)
{
 char link_data[GIT_PATH_MAX];
 int link_size = GIT_PATH_MAX;

 cl_must_pass(p_mkdir("symlink", 0777));

 if (!git_path_supports_symlinks("symlink/test"))
  cl_skip();
 populate_symlink_workdir();

 link_size = p_readlink("./symlink/link_to_new.txt", link_data, link_size);
 cl_assert(link_size >= 0);

 link_data[link_size] = '\0';
 cl_assert_equal_i(link_size, strlen("new.txt"));
 cl_assert_equal_s(link_data, "new.txt");
 check_file_contents("./symlink/link_to_new.txt", "my new file\n");
}
