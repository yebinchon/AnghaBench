
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loop; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int fs_event ;
 int fs_event_fail ;
 int uv_close (int *,int ) ;
 int uv_fs_event_init (int ,int *) ;
 int uv_fs_event_start (int *,int ,char*,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  int r;

  r = uv_fs_event_init(handle->loop, &fs_event);
  ASSERT(r == 0);
  r = uv_fs_event_start(&fs_event, fs_event_fail, ".", 0);
  ASSERT(r == 0);

  uv_close((uv_handle_t*)&fs_event, close_cb);
  uv_close((uv_handle_t*)handle, close_cb);
}
