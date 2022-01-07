
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loop; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int magic_cookie ;
 TYPE_1__ timer ;
 int uv_close (int *,int *) ;
 int uv_walk (int ,int ,int ) ;
 int walk_cb ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &timer);

  uv_walk(handle->loop, walk_cb, magic_cookie);
  uv_close((uv_handle_t*)handle, ((void*)0));
}
