
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_CONFIG ;
 int buf ;
 int git_buf_dispose (int *) ;
 int p_unlink (int ) ;

void test_config_stress__cleanup(void)
{
 git_buf_dispose(&buf);
 p_unlink(TEST_CONFIG);
}
