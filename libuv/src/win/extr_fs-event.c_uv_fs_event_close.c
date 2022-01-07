
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {int req_pending; } ;
typedef TYPE_1__ uv_fs_event_t ;


 int uv__handle_closing (TYPE_1__*) ;
 int uv_fs_event_stop (TYPE_1__*) ;
 int uv_want_endgame (int *,int *) ;

void uv_fs_event_close(uv_loop_t* loop, uv_fs_event_t* handle) {
  uv_fs_event_stop(handle);

  uv__handle_closing(handle);

  if (!handle->req_pending) {
    uv_want_endgame(loop, (uv_handle_t*)handle);
  }

}
