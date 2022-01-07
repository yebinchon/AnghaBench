
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_loop_t ;
typedef int uv_fs_event_t ;


 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 int create_file (char*) ;
 int fs_event_cb_called ;
 int fs_event_cb_file_current_dir ;
 int remove (char*) ;
 int timer_cb_touch ;
 int timer_cb_touch_called ;
 int uv_fs_event_init (int * const,int *) ;
 int uv_fs_event_start (int *,int ,char*,int ) ;
 int uv_run (int * const,int ) ;
 int uv_timer_init (int * const,int *) ;
 int uv_timer_start (int *,int ,int,int ) ;

__attribute__((used)) static void assert_watch_file_current_dir(uv_loop_t* const loop, int file_or_dir) {
  uv_timer_t timer;
  uv_fs_event_t fs_event;
  int r;


  remove("watch_file");
  create_file("watch_file");

  r = uv_fs_event_init(loop, &fs_event);
  ASSERT(r == 0);


  r = uv_fs_event_start(&fs_event,
                        fs_event_cb_file_current_dir,
                        file_or_dir == 1 ? "." : "watch_file",
                        0);
  ASSERT(r == 0);

  r = uv_timer_init(loop, &timer);
  ASSERT(r == 0);

  r = uv_timer_start(&timer, timer_cb_touch, 100, 0);
  ASSERT(r == 0);

  ASSERT(timer_cb_touch_called == 0);
  ASSERT(fs_event_cb_called == 0);

  uv_run(loop, UV_RUN_DEFAULT);

  ASSERT(timer_cb_touch_called == 1);
  ASSERT(fs_event_cb_called == 1);


  remove("watch_file");
  fs_event_cb_called = 0;
  timer_cb_touch_called = 0;
  uv_run(loop, UV_RUN_DEFAULT);
}
