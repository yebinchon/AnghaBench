
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int once_cb_called ;
 int once_close_cb ;
 int printf (char*,int) ;
 int uv_close (int *,int ) ;
 int uv_default_loop () ;
 scalar_t__ uv_is_active (int *) ;
 int uv_update_time (int ) ;

__attribute__((used)) static void once_cb(uv_timer_t* handle) {
  printf("ONCE_CB %d\n", once_cb_called);

  ASSERT(handle != ((void*)0));
  ASSERT(0 == uv_is_active((uv_handle_t*) handle));

  once_cb_called++;

  uv_close((uv_handle_t*)handle, once_close_cb);


  uv_update_time(uv_default_loop());
}
