
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; int wrap; int init; int member_0; } ;
typedef TYPE_1__ git_stream_registration ;
typedef int git_stream ;


 int GIT_STREAM_STANDARD ;
 int GIT_STREAM_TLS ;
 int cl_assert_equal_i (int,scalar_t__) ;
 int cl_assert_equal_p (int *,int *) ;
 int cl_git_pass (int ) ;
 scalar_t__ ctor_called ;
 int git_socket_stream_new (int **,char*,char*) ;
 int git_stream_register (int,TYPE_1__*) ;
 int git_tls_stream_new (int **,char*,char*) ;
 int test_stream ;
 int test_stream_init ;
 int test_stream_wrap ;

void test_stream_registration__both(void)
{
 git_stream *stream;
 git_stream_registration registration = {0};

 registration.version = 1;
 registration.init = test_stream_init;
 registration.wrap = test_stream_wrap;

 cl_git_pass(git_stream_register(GIT_STREAM_STANDARD | GIT_STREAM_TLS, &registration));

 ctor_called = 0;
 cl_git_pass(git_tls_stream_new(&stream, "localhost", "443"));
 cl_assert_equal_i(1, ctor_called);
 cl_assert_equal_p(&test_stream, stream);

 ctor_called = 0;
 cl_git_pass(git_socket_stream_new(&stream, "localhost", "80"));
 cl_assert_equal_i(1, ctor_called);
 cl_assert_equal_p(&test_stream, stream);
}
