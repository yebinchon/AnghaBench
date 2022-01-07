
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int ) ;
 int printf (char*) ;
 int repeat_close_cb_called ;

__attribute__((used)) static void repeat_close_cb(uv_handle_t* handle) {
  printf("REPEAT_CLOSE_CB\n");

  ASSERT(handle != ((void*)0));

  repeat_close_cb_called++;
}
