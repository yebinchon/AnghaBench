
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int heap_node; int loop; } ;
typedef TYPE_1__ uv_timer_t ;
struct heap_node {int dummy; } ;


 int heap_remove (int ,struct heap_node*,int ) ;
 int timer_heap (int ) ;
 int timer_less_than ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__is_active (TYPE_1__*) ;

int uv_timer_stop(uv_timer_t* handle) {
  if (!uv__is_active(handle))
    return 0;

  heap_remove(timer_heap(handle->loop),
              (struct heap_node*) &handle->heap_node,
              timer_less_than);
  uv__handle_stop(handle);

  return 0;
}
