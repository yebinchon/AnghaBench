
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int once_close_cb_called ;
 int printf (char*) ;
 scalar_t__ uv_is_active (int *) ;

__attribute__((used)) static void once_close_cb(uv_handle_t* handle) {
  printf("ONCE_CLOSE_CB\n");

  ASSERT(handle != ((void*)0));
  ASSERT(0 == uv_is_active(handle));

  once_close_cb_called++;
}
