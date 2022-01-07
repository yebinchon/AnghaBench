
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int * cfg ;
 int git_buf_init (int *,int ) ;

void test_config_include__initialize(void)
{
    cfg = ((void*)0);
    git_buf_init(&buf, 0);
}
