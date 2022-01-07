
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int git_buf_dispose (int *) ;
 int git_config_free (int ) ;

void test_config_include__cleanup(void)
{
    git_config_free(cfg);
    git_buf_dispose(&buf);
}
