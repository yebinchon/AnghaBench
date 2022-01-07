
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 int test_context_data4_finalize_called ;

__attribute__((used)) static void
test_context_data4_finalize (void *user_data_p)
{
  TEST_ASSERT (!test_context_data4_finalize_called);
  test_context_data4_finalize_called = 1;
  TEST_ASSERT (user_data_p == ((void*)0));
}
