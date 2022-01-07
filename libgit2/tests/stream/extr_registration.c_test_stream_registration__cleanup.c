
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STREAM_STANDARD ;
 int GIT_STREAM_TLS ;
 int cl_git_pass (int ) ;
 int git_stream_register (int,int *) ;

void test_stream_registration__cleanup(void)
{
 cl_git_pass(git_stream_register(GIT_STREAM_TLS | GIT_STREAM_STANDARD, ((void*)0)));
}
