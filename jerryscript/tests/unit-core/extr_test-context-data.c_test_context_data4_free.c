
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 int test_context_data4_finalize_called ;
 int test_context_data4_free_called ;

__attribute__((used)) static void
test_context_data4_free (void *user_data_p)
{
  test_context_data4_free_called = 1;
  TEST_ASSERT (user_data_p == ((void*)0));
  TEST_ASSERT (!test_context_data4_finalize_called);
}
