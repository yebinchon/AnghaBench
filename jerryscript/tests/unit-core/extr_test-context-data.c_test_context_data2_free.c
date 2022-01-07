
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 char const* string2 ;
 int test_context_data2_free_called ;

__attribute__((used)) static void
test_context_data2_free (void *user_data_p)
{
  test_context_data2_free_called = 1;
  TEST_ASSERT ((*(const char **) user_data_p) == string2);
}
