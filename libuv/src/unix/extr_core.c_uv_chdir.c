
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV__ERR (int ) ;
 scalar_t__ chdir (char const*) ;
 int errno ;

int uv_chdir(const char* dir) {
  if (chdir(dir))
    return UV__ERR(errno);

  return 0;
}
