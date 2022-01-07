
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ unsetenv (char const*) ;

int uv_os_unsetenv(const char* name) {
  if (name == ((void*)0))
    return UV_EINVAL;

  if (unsetenv(name) != 0)
    return UV__ERR(errno);

  return 0;
}
