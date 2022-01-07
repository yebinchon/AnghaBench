
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int O_RDONLY ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_filebuf_printf (int *,char*,char*) ;
 int git_path_exists (char*) ;
 int p_close (int) ;
 int p_mkdir (char*,int) ;
 int p_open (char*,int ) ;

void test_core_filebuf__rename_error(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 char *dir = "subdir", *test = "subdir/test", *test_lock = "subdir/test.lock";
 int fd;


 cl_skip();


 cl_git_pass(p_mkdir(dir, 0666));
 cl_git_mkfile(test, "dummy content");
 fd = p_open(test, O_RDONLY);
 cl_assert(fd > 0);
 cl_git_pass(git_filebuf_open(&file, test, 0, 0666));

 cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));

 cl_assert_equal_i(1, git_path_exists(test_lock));

 cl_git_fail(git_filebuf_commit(&file));
 p_close(fd);

 git_filebuf_cleanup(&file);

 cl_assert_equal_i(0, git_path_exists(test_lock));
}
