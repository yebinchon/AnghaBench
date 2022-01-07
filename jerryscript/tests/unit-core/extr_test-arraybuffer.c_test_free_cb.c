
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callback_called ;

__attribute__((used)) static void test_free_cb (void *buffer)
{
  (void) buffer;
  callback_called = 1;
}
