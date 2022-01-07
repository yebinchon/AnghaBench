
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_UNUSED (void*) ;
 int test_context_data3_new_called ;

__attribute__((used)) static void
test_context_data3_new (void *user_data_p)
{
  JERRY_UNUSED (user_data_p);
  test_context_data3_new_called = 1;
}
