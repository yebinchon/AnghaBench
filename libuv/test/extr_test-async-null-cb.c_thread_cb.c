
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_handle ;
 int uv_async_send (int *) ;

__attribute__((used)) static void thread_cb(void* dummy) {
  (void) &dummy;
  uv_async_send(&async_handle);
}
