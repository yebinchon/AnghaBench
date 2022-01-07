
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int UV_ENOENT ;
 char* getenv (char const*) ;
 int memcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

int uv_os_getenv(const char* name, char* buffer, size_t* size) {
  char* var;
  size_t len;

  if (name == ((void*)0) || buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  var = getenv(name);

  if (var == ((void*)0))
    return UV_ENOENT;

  len = strlen(var);

  if (len >= *size) {
    *size = len + 1;
    return UV_ENOBUFS;
  }

  memcpy(buffer, var, len + 1);
  *size = len;

  return 0;
}
