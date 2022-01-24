#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {int delayed_error; int /*<<< orphan*/  flags; TYPE_1__ io_watcher; } ;
typedef  TYPE_2__ uv_tcp_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ EAFNOSUPPORT ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  UV_HANDLE_BOUND ; 
 int /*<<< orphan*/  UV_HANDLE_IPV6 ; 
 unsigned int UV_TCP_IPV6ONLY ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,unsigned int) ; 
 scalar_t__ errno ; 
 int FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC4(uv_tcp_t* tcp,
                 const struct sockaddr* addr,
                 unsigned int addrlen,
                 unsigned int flags) {
  int err;
  int on;

  /* Cannot set IPv6-only mode on non-IPv6 socket. */
  if ((flags & UV_TCP_IPV6ONLY) && addr->sa_family != AF_INET6)
    return UV_EINVAL;

  err = FUNC2(tcp, addr->sa_family, 0);
  if (err)
    return err;

  on = 1;
  if (FUNC3(tcp->io_watcher.fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)))
    return FUNC0(errno);

#ifndef __OpenBSD__
#ifdef IPV6_V6ONLY
  if (addr->sa_family == AF_INET6) {
    on = (flags & UV_TCP_IPV6ONLY) != 0;
    if (setsockopt(tcp->io_watcher.fd,
                   IPPROTO_IPV6,
                   IPV6_V6ONLY,
                   &on,
                   sizeof on) == -1) {
#if defined(__MVS__)
      if (errno == EOPNOTSUPP)
        return UV_EINVAL;
#endif
      return UV__ERR(errno);
    }
  }
#endif
#endif

  errno = 0;
  if (FUNC1(tcp->io_watcher.fd, addr, addrlen) && errno != EADDRINUSE) {
    if (errno == EAFNOSUPPORT)
      /* OSX, other BSDs and SunoS fail with EAFNOSUPPORT when binding a
       * socket created with AF_INET to an AF_INET6 address or vice versa. */
      return UV_EINVAL;
    return FUNC0(errno);
  }
  tcp->delayed_error = FUNC0(errno);

  tcp->flags |= UV_HANDLE_BOUND;
  if (addr->sa_family == AF_INET6)
    tcp->flags |= UV_HANDLE_IPV6;

  return 0;
}