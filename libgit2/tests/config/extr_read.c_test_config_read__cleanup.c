
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int git_buf_dispose (int *) ;

void test_config_read__cleanup(void)
{
 git_buf_dispose(&buf);
}
