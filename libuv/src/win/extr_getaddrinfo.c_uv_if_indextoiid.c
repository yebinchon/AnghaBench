
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int snprintf (char*,size_t,char*,unsigned int) ;
 int uv_translate_sys_error (int) ;

int uv_if_indextoiid(unsigned int ifindex, char* buffer, size_t* size) {
  int r;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  r = snprintf(buffer, *size, "%d", ifindex);

  if (r < 0)
    return uv_translate_sys_error(r);

  if (r >= (int) *size) {
    *size = r + 1;
    return UV_ENOBUFS;
  }

  *size = r;
  return 0;
}
