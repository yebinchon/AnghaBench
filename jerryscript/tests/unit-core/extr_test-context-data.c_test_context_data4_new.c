
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int ) ;
 int test_context_data4_new_called ;

__attribute__((used)) static void
test_context_data4_new (void *user_data_p)
{
  test_context_data4_new_called = 1;
  TEST_ASSERT (user_data_p == ((void*)0));
}
