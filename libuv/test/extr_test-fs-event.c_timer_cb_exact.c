
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int fs_event ;
 scalar_t__ timer_cb_exact_called ;
 int touch_file (char*) ;
 int uv_close (int *,int *) ;
 int uv_fs_event_stop (int *) ;

__attribute__((used)) static void timer_cb_exact(uv_timer_t* handle) {
  int r;

  if (timer_cb_exact_called == 0) {
    touch_file("watch_dir/file.js");
  } else {
    uv_close((uv_handle_t*)handle, ((void*)0));
    r = uv_fs_event_stop(&fs_event);
    ASSERT(r == 0);
    uv_close((uv_handle_t*) &fs_event, ((void*)0));
  }

  ++timer_cb_exact_called;
}
