
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EAFNOSUPPORT ;
 int inet_ntop4 (void const*,char*,size_t) ;
 int inet_ntop6 (void const*,char*,size_t) ;

int uv_inet_ntop(int af, const void* src, char* dst, size_t size) {
  switch (af) {
  case 129:
    return (inet_ntop4(src, dst, size));
  case 128:
    return (inet_ntop6(src, dst, size));
  default:
    return UV_EAFNOSUPPORT;
  }

}
