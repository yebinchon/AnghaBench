
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int TEST_CONFIG ;
 int cl_git_pass (int ) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int) ;
 int git_filebuf_printf (int *,char*) ;

void test_config_stress__initialize(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;

 cl_git_pass(git_filebuf_open(&file, TEST_CONFIG, 0, 0666));

 git_filebuf_printf(&file, "[color]\n\tui = auto\n");
 git_filebuf_printf(&file, "[core]\n\teditor = \n");

 cl_git_pass(git_filebuf_commit(&file));
}
