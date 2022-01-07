
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifname_buf ;


 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int UV_IF_NAMESIZE ;
 int UV__ERR (int ) ;
 int errno ;
 int * if_indextoname (unsigned int,char*) ;
 int memcpy (char*,char*,size_t) ;
 size_t strnlen (char*,int) ;

int uv_if_indextoname(unsigned int ifindex, char* buffer, size_t* size) {
  char ifname_buf[UV_IF_NAMESIZE];
  size_t len;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  if (if_indextoname(ifindex, ifname_buf) == ((void*)0))
    return UV__ERR(errno);

  len = strnlen(ifname_buf, sizeof(ifname_buf));

  if (*size <= len) {
    *size = len + 1;
    return UV_ENOBUFS;
  }

  memcpy(buffer, ifname_buf, len);
  buffer[len] = '\0';
  *size = len;

  return 0;
}
