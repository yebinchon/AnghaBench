
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int git_config_open_ondisk (int *,char*) ;

void test_config_validkeyname__initialize(void)
{
 cl_fixture_sandbox("config/config10");

 cl_git_pass(git_config_open_ondisk(&cfg, "config10"));
}
