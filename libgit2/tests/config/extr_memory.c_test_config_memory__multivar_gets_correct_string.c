
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_config_contains (int ,char*,char*) ;
 int backend ;
 int setup_backend (char*) ;

void test_config_memory__multivar_gets_correct_string(void)
{
 setup_backend(
  "[general]\n"
  "foo=bar1\n"
  "foo=bar2\n");
 assert_config_contains(backend, "general.foo", "bar2");
}
