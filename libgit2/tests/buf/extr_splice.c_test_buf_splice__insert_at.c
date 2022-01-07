
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _buf ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_buf_splice (int *,int ,int ,char*,int ) ;
 int strlen (char*) ;

void test_buf_splice__insert_at(void)
{
 git_buf_sets(&_buf, "Hell world!");

 cl_git_pass(git_buf_splice(&_buf, strlen("Hell"), 0, "o", strlen("o")));

 cl_assert_equal_s("Hello world!", git_buf_cstr(&_buf));
}
