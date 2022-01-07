
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_poll_t ;


 int uv__poll_stop (int *) ;

void uv__poll_close(uv_poll_t* handle) {
  uv__poll_stop(handle);
}
