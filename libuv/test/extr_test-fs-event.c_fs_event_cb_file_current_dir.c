
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* data; } ;
typedef TYPE_1__ uv_timer_t ;
struct TYPE_8__ {int loop; } ;
typedef TYPE_2__ uv_fs_event_t ;


 int ASSERT (int) ;
 int UV_CHANGE ;
 TYPE_2__ fs_event ;
 scalar_t__ fs_event_cb_called ;
 scalar_t__ strcmp (char const*,char*) ;
 int timer_cb_close_handle ;
 int uv_timer_init (int ,TYPE_1__*) ;
 int uv_timer_start (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void fs_event_cb_file_current_dir(uv_fs_event_t* handle,
  const char* filename, int events, int status) {
  ASSERT(fs_event_cb_called == 0);
  ++fs_event_cb_called;

  ASSERT(handle == &fs_event);
  ASSERT(status == 0);
  ASSERT(events == UV_CHANGE);

  ASSERT(strcmp(filename, "watch_file") == 0);





  {
    static uv_timer_t timer;
    uv_timer_init(handle->loop, &timer);
    timer.data = handle;
    uv_timer_start(&timer, timer_cb_close_handle, 250, 0);
  }
}
