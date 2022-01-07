
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int native_free_cb_call_count ;

__attribute__((used)) static void
native_free_cb (void *native_p)
{
  ++native_free_cb_call_count;
  (void) native_p;
}
