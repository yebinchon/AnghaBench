
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _buf ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_len (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_buf_splice (int *,int ,int ,char*,int ) ;
 int strlen (char*) ;

void test_buf_splice__append(void)
{
 git_buf_sets(&_buf, "Hello");

 cl_git_pass(git_buf_splice(&_buf, git_buf_len(&_buf), 0, " world!", strlen(" world!")));

 cl_assert_equal_s("Hello world!", git_buf_cstr(&_buf));
}
