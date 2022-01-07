
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loop; } ;
typedef TYPE_1__ uv_timer_t ;


 int ASSERT (TYPE_1__*) ;
 int uv_stop (int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle);
  uv_stop(handle->loop);
}
