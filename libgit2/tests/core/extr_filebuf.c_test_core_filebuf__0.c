
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 int cl_must_pass (int) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_path_exists (char*) ;
 int p_close (int) ;
 int p_creat (char*,int) ;
 int p_unlink (char*) ;

void test_core_filebuf__0(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 int fd;
 char test[] = "test", testlock[] = "test.lock";

 fd = p_creat(testlock, 0744);

 cl_must_pass(fd);
 cl_must_pass(p_close(fd));

 cl_git_fail(git_filebuf_open(&file, test, 0, 0666));
 cl_assert(git_path_exists(testlock));

 cl_must_pass(p_unlink(testlock));
}
