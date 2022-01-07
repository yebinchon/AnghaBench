
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ EINTR ;
 int UV_EIO ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 size_t uv__getrandom (char*,size_t,int ) ;
 int uv__random_getrandom_init () ;

int uv__random_getrandom(void* buf, size_t buflen) {
  ssize_t n;
  size_t pos;
  int rc;

  rc = uv__random_getrandom_init();
  if (rc != 0)
    return rc;

  for (pos = 0; pos != buflen; pos += n) {
    do {
      n = buflen - pos;






      if (n > 256)
        n = 256;

      n = uv__getrandom((char *) buf + pos, n, 0);
    } while (n == -1 && errno == EINTR);

    if (n == -1)
      return UV__ERR(errno);

    if (n == 0)
      return UV_EIO;
  }

  return 0;
}
