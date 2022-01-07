
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ getpid () ;
 int readlink (char*,char*,int) ;
 int snprintf (char*,int,char*,unsigned long) ;

int uv_exepath(char* buffer, size_t* size) {
  ssize_t res;
  char buf[128];

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  snprintf(buf, sizeof(buf), "/proc/%lu/path/a.out", (unsigned long) getpid());

  res = *size - 1;
  if (res > 0)
    res = readlink(buf, buffer, res);

  if (res == -1)
    return UV__ERR(errno);

  buffer[res] = '\0';
  *size = res;
  return 0;
}
