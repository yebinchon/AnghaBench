
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int exepath ;


 int PATH_MAX ;
 int UV_EINVAL ;
 int UV_EIO ;
 int UV__ERR (int ) ;
 scalar_t__ _NSGetExecutablePath (char*,int*) ;
 int errno ;
 int memcpy (char*,char*,size_t) ;
 char* realpath (char*,char*) ;
 size_t strlen (char*) ;

int uv_exepath(char* buffer, size_t* size) {

  char abspath[PATH_MAX * 2 + 1];
  char exepath[PATH_MAX + 1];
  uint32_t exepath_size;
  size_t abspath_size;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  exepath_size = sizeof(exepath);
  if (_NSGetExecutablePath(exepath, &exepath_size))
    return UV_EIO;

  if (realpath(exepath, abspath) != abspath)
    return UV__ERR(errno);

  abspath_size = strlen(abspath);
  if (abspath_size == 0)
    return UV_EIO;

  *size -= 1;
  if (*size > abspath_size)
    *size = abspath_size;

  memcpy(buffer, abspath, *size);
  buffer[*size] = '\0';

  return 0;
}
