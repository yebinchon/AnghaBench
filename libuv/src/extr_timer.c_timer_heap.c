
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timer_heap; } ;
typedef TYPE_1__ uv_loop_t ;
struct heap {int dummy; } ;



__attribute__((used)) static struct heap *timer_heap(const uv_loop_t* loop) {



  return (struct heap*) &loop->timer_heap;

}
