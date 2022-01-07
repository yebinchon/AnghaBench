
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ setenv (char const*,char const*,int) ;

int uv_os_setenv(const char* name, const char* value) {
  if (name == ((void*)0) || value == ((void*)0))
    return UV_EINVAL;

  if (setenv(name, value, 1) != 0)
    return UV__ERR(errno);

  return 0;
}
