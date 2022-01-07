
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ async_handles; } ;


 unsigned int ARRAY_SIZE (scalar_t__) ;
 TYPE_1__* container ;
 scalar_t__ done ;
 unsigned int fastrand () ;
 int uv_async_send (scalar_t__) ;

__attribute__((used)) static void thread_cb(void* arg) {
  unsigned i;

  while (done == 0) {
    i = fastrand() % ARRAY_SIZE(container->async_handles);
    uv_async_send(container->async_handles + i);
  }
}
