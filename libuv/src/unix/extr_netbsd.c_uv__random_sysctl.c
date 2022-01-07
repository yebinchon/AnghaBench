
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;


 int UV_EIO ;
 int UV__ERR (int ) ;
 int errno ;
 int sysctl (int*,int ,unsigned char*,size_t*,int *,int ) ;

int uv__random_sysctl(void* buf, size_t len) {
  static int name[] = {129, 128};
  size_t count, req;
  unsigned char* p;

  p = buf;
  while (len) {
    req = len < 32 ? len : 32;
    count = req;

    if (sysctl(name, ARRAY_SIZE(name), p, &count, ((void*)0), 0) == -1)
      return UV__ERR(errno);

    if (count != req)
      return UV_EIO;

    p += count;
    len -= count;
  }

  return 0;
}
