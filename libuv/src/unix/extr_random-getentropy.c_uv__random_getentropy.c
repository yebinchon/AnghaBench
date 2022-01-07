
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_ENOSYS ;
 int UV__ERR (int ) ;
 int errno ;
 int once ;
 scalar_t__ uv__getentropy (char*,size_t) ;
 int uv__random_getentropy_init ;
 int uv_once (int *,int ) ;

int uv__random_getentropy(void* buf, size_t buflen) {
  size_t pos;
  size_t stride;

  uv_once(&once, uv__random_getentropy_init);

  if (uv__getentropy == ((void*)0))
    return UV_ENOSYS;


  for (pos = 0, stride = 256; pos + stride < buflen; pos += stride)
    if (uv__getentropy((char *) buf + pos, stride))
      return UV__ERR(errno);

  if (uv__getentropy((char *) buf + pos, buflen - pos))
    return UV__ERR(errno);

  return 0;
}
