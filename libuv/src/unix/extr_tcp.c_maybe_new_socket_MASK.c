#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long flags; } ;
typedef  TYPE_1__ uv_tcp_t ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  saddr ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int AF_UNSPEC ; 
 unsigned long UV_HANDLE_BOUND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int,unsigned long) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(uv_tcp_t* handle, int domain, unsigned long flags) {
  struct sockaddr_storage saddr;
  socklen_t slen;

  if (domain == AF_UNSPEC) {
    handle->flags |= flags;
    return 0;
  }

  if (FUNC5(handle) != -1) {

    if (flags & UV_HANDLE_BOUND) {

      if (handle->flags & UV_HANDLE_BOUND) {
        /* It is already bound to a port. */
        handle->flags |= flags;
        return 0;
      }

      /* Query to see if tcp socket is bound. */
      slen = sizeof(saddr);
      FUNC3(&saddr, 0, sizeof(saddr));
      if (FUNC2(FUNC5(handle), (struct sockaddr*) &saddr, &slen))
        return FUNC0(errno);

      if ((saddr.ss_family == AF_INET6 &&
          ((struct sockaddr_in6*) &saddr)->sin6_port != 0) ||
          (saddr.ss_family == AF_INET &&
          ((struct sockaddr_in*) &saddr)->sin_port != 0)) {
        /* Handle is already bound to a port. */
        handle->flags |= flags;
        return 0;
      }

      /* Bind to arbitrary port */
      if (FUNC1(FUNC5(handle), (struct sockaddr*) &saddr, slen))
        return FUNC0(errno);
    }

    handle->flags |= flags;
    return 0;
  }

  return FUNC4(handle, domain, flags);
}