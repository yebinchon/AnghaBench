
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_condition_includes (char*,char*,int) ;

void test_config_conditionals__invalid_conditional_fails(void)
{
 assert_condition_includes("foobar", ".git", 0);
}
