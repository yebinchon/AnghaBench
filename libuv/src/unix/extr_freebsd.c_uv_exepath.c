
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PATHNAME ;
 int PATH_MAX ;
 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int assert (int) ;
 int errno ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;

int uv_exepath(char* buffer, size_t* size) {
  char abspath[PATH_MAX * 2 + 1];
  int mib[4];
  size_t abspath_size;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC;
  mib[2] = KERN_PROC_PATHNAME;
  mib[3] = -1;

  abspath_size = sizeof abspath;
  if (sysctl(mib, 4, abspath, &abspath_size, ((void*)0), 0))
    return UV__ERR(errno);

  assert(abspath_size > 0);
  abspath_size -= 1;
  *size -= 1;

  if (*size > abspath_size)
    *size = abspath_size;

  memcpy(buffer, abspath, *size);
  buffer[*size] = '\0';

  return 0;
}
