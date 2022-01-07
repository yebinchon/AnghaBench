
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_buf_dispose (int *) ;
 int path ;

void test_win32_longpath__cleanup(void)
{
 git_buf_dispose(&path);
}
