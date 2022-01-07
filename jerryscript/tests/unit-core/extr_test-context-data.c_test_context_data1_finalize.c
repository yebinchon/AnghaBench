
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 char const* string1 ;
 int test_context_data1_finalize_called ;
 int test_context_data1_free_called ;

__attribute__((used)) static void
test_context_data1_finalize (void *user_data_p)
{
  TEST_ASSERT (test_context_data1_free_called);
  TEST_ASSERT (!test_context_data1_finalize_called);
  TEST_ASSERT ((*(const char **) user_data_p) == string1);
  test_context_data1_finalize_called = 1;
}
