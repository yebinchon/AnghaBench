
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int printf (char*) ;
 int repeat_cb_called ;
 int repeat_close_cb ;
 int uv_close (int *,int ) ;
 int uv_is_active (int *) ;

__attribute__((used)) static void repeat_cb(uv_timer_t* handle) {
  printf("REPEAT_CB\n");

  ASSERT(handle != ((void*)0));
  ASSERT(1 == uv_is_active((uv_handle_t*) handle));

  repeat_cb_called++;

  if (repeat_cb_called == 5) {
    uv_close((uv_handle_t*)handle, repeat_close_cb);
  }
}
