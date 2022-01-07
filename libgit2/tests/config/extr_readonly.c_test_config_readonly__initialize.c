
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_git_pass (int ) ;
 int git_config_new (int *) ;

void test_config_readonly__initialize(void)
{
 cl_git_pass(git_config_new(&cfg));
}
