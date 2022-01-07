
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_stream ;


 int cl_assert (int) ;
 int cl_assert_equal_i (int,scalar_t__) ;
 int cl_assert_equal_p (int *,int *) ;
 int cl_git_fail_with (int,int) ;
 int cl_git_pass (int) ;
 scalar_t__ ctor_called ;
 int git_stream_free (int *) ;
 int git_stream_register_tls (int *) ;
 int git_tls_stream_new (int **,char*,char*) ;
 int test_stream ;
 int * test_stream_init ;

void test_stream_deprecated__register_tls(void)
{
 git_stream *stream;
 int error;

 ctor_called = 0;
 cl_git_pass(git_stream_register_tls(test_stream_init));
 cl_git_pass(git_tls_stream_new(&stream, "localhost", "443"));
 cl_assert_equal_i(1, ctor_called);
 cl_assert_equal_p(&test_stream, stream);

 ctor_called = 0;
 stream = ((void*)0);
 cl_git_pass(git_stream_register_tls(((void*)0)));
 error = git_tls_stream_new(&stream, "localhost", "443");






 cl_git_fail_with(-1, error);




 cl_assert_equal_i(0, ctor_called);
 cl_assert(&test_stream != stream);

 git_stream_free(stream);
}
