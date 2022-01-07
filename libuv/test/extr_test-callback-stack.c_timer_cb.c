
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int FATAL (char*) ;
 int alloc_cb ;
 int client ;
 int close_cb ;
 scalar_t__ nested ;
 int puts (char*) ;
 int read_cb ;
 int timer ;
 int timer_cb_called ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &timer);
  ASSERT(nested == 0 && "timer_cb must be called from a fresh stack");

  puts("Timeout complete. Now read data...");

  nested++;
  if (uv_read_start((uv_stream_t*)&client, alloc_cb, read_cb)) {
    FATAL("uv_read_start failed");
  }
  nested--;

  timer_cb_called++;

  uv_close((uv_handle_t*)handle, close_cb);
}
