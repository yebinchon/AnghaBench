
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int LPSTR ;
typedef int LPSOCKADDR ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;


 int WSAGetLastError () ;
 int WSAStringToAddressA (int ,int,int *,int ,int*) ;

 int errno ;
 int memcpy (void*,void*,int) ;

int p_inet_pton(int af, const char *src, void *dst)
{
 struct sockaddr_storage sin;
 void *addr;
 int sin_len = sizeof(struct sockaddr_storage), addr_len;
 int error = 0;

 if (af == AF_INET) {
  addr = &((struct sockaddr_in *)&sin)->sin_addr;
  addr_len = sizeof(struct in_addr);
 } else if (af == AF_INET6) {
  addr = &((struct sockaddr_in6 *)&sin)->sin6_addr;
  addr_len = sizeof(struct in6_addr);
 } else {
  errno = EAFNOSUPPORT;
  return -1;
 }

 if ((error = WSAStringToAddressA((LPSTR)src, af, ((void*)0), (LPSOCKADDR)&sin, &sin_len)) == 0) {
  memcpy(dst, addr, addr_len);
  return 1;
 }

 switch(WSAGetLastError()) {
 case 129:
  return 0;
 case 130:
  errno = ENOSPC;
  return -1;
 case 128:
  errno = ENOMEM;
  return -1;
 }

 errno = EINVAL;
 return -1;
}
