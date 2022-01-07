
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_check_t ;


 int ASSERT (int) ;
 int async_handle ;
 scalar_t__ check_cb_called ;
 int check_handle ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void check_cb(uv_check_t* handle) {
  ASSERT(check_cb_called == 0);
  uv_close((uv_handle_t*) &async_handle, ((void*)0));
  uv_close((uv_handle_t*) &check_handle, ((void*)0));
  check_cb_called++;
}
