
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int uv__handle_ref (int *) ;

void uv_ref(uv_handle_t* handle) {
  uv__handle_ref(handle);
}
