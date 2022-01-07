
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_odb_free (int ) ;
 int git_odb_stream_free (int ) ;
 int odb ;
 int stream ;

void test_odb_streamwrite__cleanup(void)
{
 git_odb_stream_free(stream);
 git_odb_free(odb);
 cl_git_sandbox_cleanup();
}
