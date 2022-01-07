
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_handle_t ;
typedef int uv_fs_event_t ;


 int uv_close (int *,int *) ;

__attribute__((used)) static void timer_cb_watch_twice(uv_timer_t* handle) {
  uv_fs_event_t* handles = handle->data;
  uv_close((uv_handle_t*) (handles + 0), ((void*)0));
  uv_close((uv_handle_t*) (handles + 1), ((void*)0));
  uv_close((uv_handle_t*) handle, ((void*)0));
}
