
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int once ;
 scalar_t__ status ;
 int uv__random_devurandom_init ;
 int uv__random_readpath (char*,void*,size_t) ;
 int uv_once (int *,int ) ;

int uv__random_devurandom(void* buf, size_t buflen) {
  uv_once(&once, uv__random_devurandom_init);

  if (status != 0)
    return status;

  return uv__random_readpath("/dev/urandom", buf, buflen);
}
