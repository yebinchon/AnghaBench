
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int close_cb ;
 int timer_cb_called ;
 int touch_file (char*) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timer_cb_file(uv_timer_t* handle) {
  ++timer_cb_called;

  if (timer_cb_called == 1) {
    touch_file("watch_dir/file1");
  } else {
    touch_file("watch_dir/file2");
    uv_close((uv_handle_t*)handle, close_cb);
  }
}
