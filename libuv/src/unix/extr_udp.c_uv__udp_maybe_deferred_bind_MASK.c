#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fd; } ;
struct TYPE_8__ {TYPE_1__ io_watcher; } ;
typedef  TYPE_3__ uv_udp_t ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in6 {int sin_family; int sin6_family; int /*<<< orphan*/  sin6_addr; TYPE_2__ sin_addr; } ;
struct sockaddr_in {int sin_family; int sin6_family; int /*<<< orphan*/  sin6_addr; TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_3__*,struct sockaddr*,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(uv_udp_t* handle,
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
  case AF_INET:
  {
    struct sockaddr_in* addr = &taddr.in;
    FUNC2(addr, 0, sizeof *addr);
    addr->sin_family = AF_INET;
    addr->sin_addr.s_addr = INADDR_ANY;
    addrlen = sizeof *addr;
    break;
  }
  case AF_INET6:
  {
    struct sockaddr_in6* addr = &taddr.in6;
    FUNC2(addr, 0, sizeof *addr);
    addr->sin6_family = AF_INET6;
    addr->sin6_addr = in6addr_any;
    addrlen = sizeof *addr;
    break;
  }
  default:
    FUNC1(0 && "unsupported address family");
    FUNC0();
  }

  return FUNC3(handle, &taddr.addr, addrlen, flags);
}