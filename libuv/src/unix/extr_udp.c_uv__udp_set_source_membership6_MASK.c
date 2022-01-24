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
struct TYPE_6__ {TYPE_1__ io_watcher; } ;
typedef  TYPE_2__ uv_udp_t ;
typedef  scalar_t__ uv_membership ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; } ;
struct group_source_req {int /*<<< orphan*/  gsr_source; int /*<<< orphan*/  gsr_group; scalar_t__ gsr_interface; } ;
typedef  int /*<<< orphan*/  mreq ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int MCAST_JOIN_SOURCE_GROUP ; 
 int MCAST_LEAVE_SOURCE_GROUP ; 
 int UV_EINVAL ; 
 scalar_t__ UV_JOIN_GROUP ; 
 scalar_t__ UV_LEAVE_GROUP ; 
 int /*<<< orphan*/  UV_UDP_REUSEADDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr_in6 const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct group_source_req*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct group_source_req*,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,struct sockaddr_in6*) ; 

__attribute__((used)) static int FUNC6(uv_udp_t* handle,
                                          const struct sockaddr_in6* multicast_addr,
                                          const char* interface_addr,
                                          const struct sockaddr_in6* source_addr,
                                          uv_membership membership) {
  struct group_source_req mreq;
  struct sockaddr_in6 addr6;
  int optname;
  int err;

  err = FUNC4(handle, AF_INET6, UV_UDP_REUSEADDR);
  if (err)
    return err;

  FUNC2(&mreq, 0, sizeof(mreq));

  if (interface_addr != NULL) {
    err = FUNC5(interface_addr, 0, &addr6);
    if (err)
      return err;
    mreq.gsr_interface = addr6.sin6_scope_id;
  } else {
    mreq.gsr_interface = 0;
  }

  FUNC1(&mreq.gsr_group, multicast_addr, sizeof(mreq.gsr_group));
  FUNC1(&mreq.gsr_source, source_addr, sizeof(mreq.gsr_source));

  if (membership == UV_JOIN_GROUP)
    optname = MCAST_JOIN_SOURCE_GROUP;
  else if (membership == UV_LEAVE_GROUP)
    optname = MCAST_LEAVE_SOURCE_GROUP;
  else
    return UV_EINVAL;

  if (FUNC3(handle->io_watcher.fd,
                 IPPROTO_IPV6,
                 optname,
                 &mreq,
                 sizeof(mreq))) {
    return FUNC0(errno);
  }

  return 0;
}