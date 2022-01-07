
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int uv__is_closing (int const*) ;

int uv_is_closing(const uv_handle_t* handle) {
  return uv__is_closing(handle);
}
