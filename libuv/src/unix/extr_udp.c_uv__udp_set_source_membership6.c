
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ io_watcher; } ;
typedef TYPE_2__ uv_udp_t ;
typedef scalar_t__ uv_membership ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; } ;
struct group_source_req {int gsr_source; int gsr_group; scalar_t__ gsr_interface; } ;
typedef int mreq ;


 int AF_INET6 ;
 int IPPROTO_IPV6 ;
 int MCAST_JOIN_SOURCE_GROUP ;
 int MCAST_LEAVE_SOURCE_GROUP ;
 int UV_EINVAL ;
 scalar_t__ UV_JOIN_GROUP ;
 scalar_t__ UV_LEAVE_GROUP ;
 int UV_UDP_REUSEADDR ;
 int UV__ERR (int ) ;
 int errno ;
 int memcpy (int *,struct sockaddr_in6 const*,int) ;
 int memset (struct group_source_req*,int ,int) ;
 scalar_t__ setsockopt (int ,int ,int,struct group_source_req*,int) ;
 int uv__udp_maybe_deferred_bind (TYPE_2__*,int ,int ) ;
 int uv_ip6_addr (char const*,int ,struct sockaddr_in6*) ;

__attribute__((used)) static int uv__udp_set_source_membership6(uv_udp_t* handle,
                                          const struct sockaddr_in6* multicast_addr,
                                          const char* interface_addr,
                                          const struct sockaddr_in6* source_addr,
                                          uv_membership membership) {
  struct group_source_req mreq;
  struct sockaddr_in6 addr6;
  int optname;
  int err;

  err = uv__udp_maybe_deferred_bind(handle, AF_INET6, UV_UDP_REUSEADDR);
  if (err)
    return err;

  memset(&mreq, 0, sizeof(mreq));

  if (interface_addr != ((void*)0)) {
    err = uv_ip6_addr(interface_addr, 0, &addr6);
    if (err)
      return err;
    mreq.gsr_interface = addr6.sin6_scope_id;
  } else {
    mreq.gsr_interface = 0;
  }

  memcpy(&mreq.gsr_group, multicast_addr, sizeof(mreq.gsr_group));
  memcpy(&mreq.gsr_source, source_addr, sizeof(mreq.gsr_source));

  if (membership == UV_JOIN_GROUP)
    optname = MCAST_JOIN_SOURCE_GROUP;
  else if (membership == UV_LEAVE_GROUP)
    optname = MCAST_LEAVE_SOURCE_GROUP;
  else
    return UV_EINVAL;

  if (setsockopt(handle->io_watcher.fd,
                 IPPROTO_IPV6,
                 optname,
                 &mreq,
                 sizeof(mreq))) {
    return UV__ERR(errno);
  }

  return 0;
}
