
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int git_zstream ;


 int GIT_ZSTREAM_DEFLATE ;
 int GIT_ZSTREAM_INIT ;
 int assert_zlib_equal (int ,scalar_t__,char*,size_t) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int data ;
 int git_zstream_done (int *) ;
 int git_zstream_free (int *) ;
 int git_zstream_get_output (char*,size_t*,int *) ;
 int git_zstream_init (int *,int ) ;
 int git_zstream_set_input (int *,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

void test_core_zstream__basic(void)
{
 git_zstream z = GIT_ZSTREAM_INIT;
 char out[128];
 size_t outlen = sizeof(out);

 cl_git_pass(git_zstream_init(&z, GIT_ZSTREAM_DEFLATE));
 cl_git_pass(git_zstream_set_input(&z, data, strlen(data) + 1));
 cl_git_pass(git_zstream_get_output(out, &outlen, &z));
 cl_assert(git_zstream_done(&z));
 cl_assert(outlen > 0);
 git_zstream_free(&z);

 assert_zlib_equal(data, strlen(data) + 1, out, outlen);
}
