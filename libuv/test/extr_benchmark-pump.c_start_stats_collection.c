
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int STATS_COUNT ;
 int STATS_INTERVAL ;
 int loop ;
 int show_stats ;
 int start_time ;
 int stats_left ;
 int timer_handle ;
 int uv_now (int ) ;
 int uv_timer_init (int ,int *) ;
 int uv_timer_start (int *,int ,int ,int ) ;
 int uv_update_time (int ) ;

__attribute__((used)) static void start_stats_collection(void) {
  int r;


  stats_left = STATS_COUNT;
  r = uv_timer_init(loop, &timer_handle);
  ASSERT(r == 0);
  r = uv_timer_start(&timer_handle, show_stats, STATS_INTERVAL, STATS_INTERVAL);
  ASSERT(r == 0);

  uv_update_time(loop);
  start_time = uv_now(loop);
}
