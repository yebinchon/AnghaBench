
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 int readlink (char*,char*,int) ;

int uv_exepath(char* buffer, size_t* size) {
  ssize_t n;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  n = *size - 1;
  if (n > 0)
    n = readlink("/proc/self/exe", buffer, n);

  if (n == -1)
    return UV__ERR(errno);

  buffer[n] = '\0';
  *size = n;

  return 0;
}
