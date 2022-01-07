
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_sandbox (char*) ;

void test_config_write__initialize(void)
{
 cl_fixture_sandbox("config/config9");
 cl_fixture_sandbox("config/config15");
 cl_fixture_sandbox("config/config17");
}
