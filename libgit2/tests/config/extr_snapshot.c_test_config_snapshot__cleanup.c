
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cfg ;
 int git_config_free (int *) ;
 int * snapshot ;

void test_config_snapshot__cleanup(void)
{
 git_config_free(cfg);
 cfg = ((void*)0);
 git_config_free(snapshot);
 snapshot = ((void*)0);
}
