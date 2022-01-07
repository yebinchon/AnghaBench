
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 int close_cb ;
 int close_cb_called ;
 int uv_close (int *,int ) ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;

__attribute__((used)) static void do_close(void* handle) {
  close_cb_called = 0;
  uv_close((uv_handle_t*)handle, close_cb);
  ASSERT(close_cb_called == 0);
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(close_cb_called == 1);
}
