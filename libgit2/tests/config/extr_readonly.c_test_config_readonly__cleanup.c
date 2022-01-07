
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cfg ;
 int git_config_free (int *) ;

void test_config_readonly__cleanup(void)
{
 git_config_free(cfg);
 cfg = ((void*)0);
}
