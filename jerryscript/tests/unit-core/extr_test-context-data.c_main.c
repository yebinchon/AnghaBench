
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int jerry_cleanup () ;
 int * jerry_get_context_data (int *) ;
 int jerry_init (int ) ;
 int manager1 ;
 int manager2 ;
 int manager3 ;
 int manager4 ;
 int strcmp (char const*,char*) ;
 int test_context_data1_finalize_called ;
 int test_context_data1_free_called ;
 int test_context_data1_new_called ;
 int test_context_data2_free_called ;
 int test_context_data2_new_called ;
 int test_context_data3_new_called ;
 int test_context_data4_finalize_called ;
 int test_context_data4_free_called ;
 int test_context_data4_new_called ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);

  TEST_ASSERT (!strcmp (*((const char **) jerry_get_context_data (&manager1)), "item1"));
  TEST_ASSERT (!strcmp (*((const char **) jerry_get_context_data (&manager2)), "item2"));
  TEST_ASSERT (jerry_get_context_data (&manager3) == ((void*)0));
  TEST_ASSERT (jerry_get_context_data (&manager4) == ((void*)0));

  TEST_ASSERT (test_context_data1_new_called);
  TEST_ASSERT (test_context_data2_new_called);
  TEST_ASSERT (test_context_data3_new_called);
  TEST_ASSERT (test_context_data4_new_called);

  TEST_ASSERT (!test_context_data1_free_called);
  TEST_ASSERT (!test_context_data2_free_called);
  TEST_ASSERT (!test_context_data4_free_called);

  jerry_cleanup ();

  TEST_ASSERT (test_context_data1_free_called);
  TEST_ASSERT (test_context_data2_free_called);
  TEST_ASSERT (test_context_data4_free_called);

  TEST_ASSERT (test_context_data1_finalize_called);
  TEST_ASSERT (test_context_data4_finalize_called);

  return 0;
}
