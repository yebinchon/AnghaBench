
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 int printf (char*) ;
 int test_api_is_free_callback_was_called ;

__attribute__((used)) static void
handler_construct_1_freecb (void *native_p)
{
  TEST_ASSERT ((uintptr_t) native_p == (uintptr_t) 0x0000000000000000ull);
  printf ("ok object free callback\n");

  test_api_is_free_callback_was_called = 1;
}
