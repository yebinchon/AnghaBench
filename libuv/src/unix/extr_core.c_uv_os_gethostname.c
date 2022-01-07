
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int UV_MAXHOSTNAMESIZE ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ gethostname (char*,int) ;
 int memcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

int uv_os_gethostname(char* buffer, size_t* size) {






  char buf[UV_MAXHOSTNAMESIZE];
  size_t len;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  if (gethostname(buf, sizeof(buf)) != 0)
    return UV__ERR(errno);

  buf[sizeof(buf) - 1] = '\0';
  len = strlen(buf);

  if (len >= *size) {
    *size = len + 1;
    return UV_ENOBUFS;
  }

  memcpy(buffer, buf, len + 1);
  *size = len;
  return 0;
}
