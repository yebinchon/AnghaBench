
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int close_cb ;
 int process ;
 int uv_close (int *,int ) ;
 int uv_process_kill (int *,int) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  uv_process_kill(&process, 15);
  uv_close((uv_handle_t*)handle, close_cb);
}
