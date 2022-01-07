
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int ) ;
 int * close_cb ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void timer_cb_close_handle(uv_timer_t* timer) {
  uv_handle_t* handle;

  ASSERT(timer != ((void*)0));
  handle = timer->data;

  uv_close((uv_handle_t*)timer, ((void*)0));
  uv_close((uv_handle_t*)handle, close_cb);
}
