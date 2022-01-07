
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_poll_t ;


 int assert (int) ;
 int uv__is_closing (int *) ;
 int uv__poll_stop (int *) ;

int uv_poll_stop(uv_poll_t* handle) {
  assert(!uv__is_closing(handle));
  uv__poll_stop(handle);
  return 0;
}
