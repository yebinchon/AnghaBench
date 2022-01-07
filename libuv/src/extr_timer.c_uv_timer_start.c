
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int heap_node; TYPE_7__* loop; scalar_t__ start_id; scalar_t__ repeat; scalar_t__ timeout; int * timer_cb; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int * uv_timer_cb ;
typedef scalar_t__ uint64_t ;
struct heap_node {int dummy; } ;
struct TYPE_9__ {scalar_t__ time; int timer_counter; } ;


 int UV_EINVAL ;
 int heap_insert (int ,struct heap_node*,int ) ;
 int timer_heap (TYPE_7__*) ;
 int timer_less_than ;
 int uv__handle_start (TYPE_1__*) ;
 scalar_t__ uv__is_active (TYPE_1__*) ;
 scalar_t__ uv__is_closing (TYPE_1__*) ;
 int uv_timer_stop (TYPE_1__*) ;

int uv_timer_start(uv_timer_t* handle,
                   uv_timer_cb cb,
                   uint64_t timeout,
                   uint64_t repeat) {
  uint64_t clamped_timeout;

  if (uv__is_closing(handle) || cb == ((void*)0))
    return UV_EINVAL;

  if (uv__is_active(handle))
    uv_timer_stop(handle);

  clamped_timeout = handle->loop->time + timeout;
  if (clamped_timeout < timeout)
    clamped_timeout = (uint64_t) -1;

  handle->timer_cb = cb;
  handle->timeout = clamped_timeout;
  handle->repeat = repeat;

  handle->start_id = handle->loop->timer_counter++;

  heap_insert(timer_heap(handle->loop),
              (struct heap_node*) &handle->heap_node,
              timer_less_than);
  uv__handle_start(handle);

  return 0;
}
