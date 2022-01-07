
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* string2 ;
 int test_context_data2_new_called ;

__attribute__((used)) static void
test_context_data2_new (void *user_data_p)
{
  test_context_data2_new_called = 1;
  *((const char **) user_data_p) = string2;
}
