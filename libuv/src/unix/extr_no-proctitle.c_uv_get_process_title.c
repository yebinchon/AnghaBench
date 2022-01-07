
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EINVAL ;

int uv_get_process_title(char* buffer, size_t size) {
  if (buffer == ((void*)0) || size == 0)
    return UV_EINVAL;

  buffer[0] = '\0';
  return 0;
}
