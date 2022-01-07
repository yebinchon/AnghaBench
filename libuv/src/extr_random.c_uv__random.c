
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_ENOSYS ;

 int uv__once_init () ;
 int uv__random_devurandom (void*,size_t) ;
 int uv__random_getentropy (void*,size_t) ;
 int uv__random_getrandom (void*,size_t) ;
 int uv__random_readpath (char*,void*,size_t) ;
 int uv__random_rtlgenrandom (void*,size_t) ;
 int uv__random_sysctl (void*,size_t) ;

__attribute__((used)) static int uv__random(void* buf, size_t buflen) {
  int rc;
  rc = uv__random_getrandom(buf, buflen);
  if (rc == UV_ENOSYS)
    rc = uv__random_devurandom(buf, buflen);

  switch (rc) {
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
      rc = uv__random_sysctl(buf, buflen);
      break;
  }
  return rc;
}
