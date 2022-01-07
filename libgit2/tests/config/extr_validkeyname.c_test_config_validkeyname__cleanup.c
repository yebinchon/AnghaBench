
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cfg ;
 int cl_fixture_cleanup (char*) ;
 int git_config_free (int *) ;

void test_config_validkeyname__cleanup(void)
{
 git_config_free(cfg);
 cfg = ((void*)0);

 cl_fixture_cleanup("config10");
}
