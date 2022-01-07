
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int compress_filter ;
 int create_compress_filter () ;
 int g_repo ;
 int git_filter_register (char*,int ,int) ;

void test_filter_stream__initialize(void)
{
 compress_filter = create_compress_filter();

 cl_git_pass(git_filter_register("compress", compress_filter, 50));
 g_repo = cl_git_sandbox_init("empty_standard_repo");
}
