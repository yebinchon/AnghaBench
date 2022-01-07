
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int init_process_title_mutex_once ;
 int memcpy (char*,int *,size_t) ;
 int * process_title ;
 int process_title_mutex ;
 int process_title_mutex_once ;
 int strlen (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_once (int *,int ) ;

int uv_get_process_title(char* buffer, size_t size) {
  size_t len;

  if (buffer == ((void*)0) || size == 0)
    return UV_EINVAL;

  uv_once(&process_title_mutex_once, init_process_title_mutex_once);
  uv_mutex_lock(&process_title_mutex);

  if (process_title != ((void*)0)) {
    len = strlen(process_title) + 1;

    if (size < len) {
      uv_mutex_unlock(&process_title_mutex);
      return UV_ENOBUFS;
    }

    memcpy(buffer, process_title, len);
  } else {
    len = 0;
  }

  uv_mutex_unlock(&process_title_mutex);

  buffer[len] = '\0';

  return 0;
}
