
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expected_entry {char* member_0; char* member_1; int member_2; } ;


 int assert_config_contains_all (int ,struct expected_entry*) ;
 int backend ;
 int setup_backend (char*) ;

void test_config_memory__foreach_sees_multivar(void)
{
 struct expected_entry entries[] = {
  { "general.foo", "bar1", 0 },
  { "general.foo", "bar2", 0 },
  { ((void*)0), ((void*)0), 0 },
 };

 setup_backend(
  "[general]\n"
  "foo=bar1\n"
  "foo=bar2\n");
 assert_config_contains_all(backend, entries);
}
