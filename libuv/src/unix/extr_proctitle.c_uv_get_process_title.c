
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; int str; } ;


 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int init_process_title_mutex_once ;
 int memcpy (char*,int ,int) ;
 TYPE_1__ process_title ;
 int process_title_mutex ;
 int process_title_mutex_once ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_once (int *,int ) ;

int uv_get_process_title(char* buffer, size_t size) {
  if (buffer == ((void*)0) || size == 0)
    return UV_EINVAL;

  uv_once(&process_title_mutex_once, init_process_title_mutex_once);
  uv_mutex_lock(&process_title_mutex);

  if (size <= process_title.len) {
    uv_mutex_unlock(&process_title_mutex);
    return UV_ENOBUFS;
  }

  if (process_title.len != 0)
    memcpy(buffer, process_title.str, process_title.len + 1);

  buffer[process_title.len] = '\0';

  uv_mutex_unlock(&process_title_mutex);

  return 0;
}
