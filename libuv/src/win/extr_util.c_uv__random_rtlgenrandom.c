
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int UV_EIO ;
 int UV_ENOSYS ;
 scalar_t__ pRtlGenRandom (void*,size_t) ;

int uv__random_rtlgenrandom(void* buf, size_t buflen) {
  if (pRtlGenRandom == ((void*)0))
    return UV_ENOSYS;

  if (buflen == 0)
    return 0;

  if (pRtlGenRandom(buf, buflen) == FALSE)
    return UV_EIO;

  return 0;
}
