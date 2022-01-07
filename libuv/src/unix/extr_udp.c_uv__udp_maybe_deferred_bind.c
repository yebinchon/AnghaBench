
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_8__ {TYPE_1__ io_watcher; } ;
typedef TYPE_3__ uv_udp_t ;
struct TYPE_7__ {int s_addr; } ;
struct sockaddr_in6 {int sin_family; int sin6_family; int sin6_addr; TYPE_2__ sin_addr; } ;
struct sockaddr_in {int sin_family; int sin6_family; int sin6_addr; TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;




 int INADDR_ANY ;
 int abort () ;
 int assert (int) ;
 int in6addr_any ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int uv__udp_bind (TYPE_3__*,struct sockaddr*,int,unsigned int) ;

__attribute__((used)) static int uv__udp_maybe_deferred_bind(uv_udp_t* handle,
                                       int domain,
                                       unsigned int flags) {
  union {
    struct sockaddr_in6 in6;
    struct sockaddr_in in;
    struct sockaddr addr;
  } taddr;
  socklen_t addrlen;

  if (handle->io_watcher.fd != -1)
    return 0;

  switch (domain) {
  case 129:
  {
    struct sockaddr_in* addr = &taddr.in;
    memset(addr, 0, sizeof *addr);
    addr->sin_family = 129;
    addr->sin_addr.s_addr = INADDR_ANY;
    addrlen = sizeof *addr;
    break;
  }
  case 128:
  {
    struct sockaddr_in6* addr = &taddr.in6;
    memset(addr, 0, sizeof *addr);
    addr->sin6_family = 128;
    addr->sin6_addr = in6addr_any;
    addrlen = sizeof *addr;
    break;
  }
  default:
    assert(0 && "unsupported address family");
    abort();
  }

  return uv__udp_bind(handle, &taddr.addr, addrlen, flags);
}
