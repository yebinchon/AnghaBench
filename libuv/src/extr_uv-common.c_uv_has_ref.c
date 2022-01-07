
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int uv__has_ref (int const*) ;

int uv_has_ref(const uv_handle_t* handle) {
  return uv__has_ref(handle);
}
