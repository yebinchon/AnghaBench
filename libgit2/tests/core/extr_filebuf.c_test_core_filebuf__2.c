
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;
typedef int buf ;


 int GIT_FILEBUF_INIT ;
 int cl_assert_equal_file (char*,int,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_filebuf_write (int *,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;
 int p_unlink (char*) ;

void test_core_filebuf__2(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 char test[] = "test";
 unsigned char buf[4096 * 4];

 memset(buf, 0xfe, sizeof(buf));

 cl_git_pass(git_filebuf_open(&file, test, 0, 0666));
 cl_git_pass(git_filebuf_write(&file, buf, sizeof(buf)));
 cl_git_pass(git_filebuf_commit(&file));

 cl_assert_equal_file((char *)buf, sizeof(buf), test);

 cl_must_pass(p_unlink(test));
}
