
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnterCriticalSection (int *) ;
 int GetLastError () ;
 int LeaveCriticalSection (int *) ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int assert (int ) ;
 int memcpy (char*,int ,size_t) ;
 int process_title ;
 int process_title_lock ;
 int strlen (int ) ;
 int uv__get_process_title () ;
 int uv__once_init () ;
 int uv_translate_sys_error (int ) ;

int uv_get_process_title(char* buffer, size_t size) {
  size_t len;

  if (buffer == ((void*)0) || size == 0)
    return UV_EINVAL;

  uv__once_init();

  EnterCriticalSection(&process_title_lock);




  if (!process_title && uv__get_process_title() == -1) {
    LeaveCriticalSection(&process_title_lock);
    return uv_translate_sys_error(GetLastError());
  }

  assert(process_title);
  len = strlen(process_title) + 1;

  if (size < len) {
    LeaveCriticalSection(&process_title_lock);
    return UV_ENOBUFS;
  }

  memcpy(buffer, process_title, len);
  LeaveCriticalSection(&process_title_lock);

  return 0;
}
