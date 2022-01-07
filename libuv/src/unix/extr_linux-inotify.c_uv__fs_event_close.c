
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_event_t ;


 int uv_fs_event_stop (int *) ;

void uv__fs_event_close(uv_fs_event_t* handle) {
  uv_fs_event_stop(handle);
}
