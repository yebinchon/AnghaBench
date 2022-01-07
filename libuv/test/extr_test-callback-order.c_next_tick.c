
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_4__ {int * loop; } ;
typedef TYPE_1__ uv_idle_t ;


 int idle_cb ;
 int idle_handle ;
 int timer_cb ;
 int timer_handle ;
 int uv_idle_init (int *,int *) ;
 int uv_idle_start (int *,int ) ;
 int uv_idle_stop (TYPE_1__*) ;
 int uv_timer_init (int *,int *) ;
 int uv_timer_start (int *,int ,int ,int ) ;

__attribute__((used)) static void next_tick(uv_idle_t* handle) {
  uv_loop_t* loop = handle->loop;
  uv_idle_stop(handle);
  uv_idle_init(loop, &idle_handle);
  uv_idle_start(&idle_handle, idle_cb);
  uv_timer_init(loop, &timer_handle);
  uv_timer_start(&timer_handle, timer_cb, 0, 0);
}
