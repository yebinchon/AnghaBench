
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int fd; } ;
struct TYPE_14__ {TYPE_5__ io_watcher; } ;
typedef TYPE_6__ uv_udp_t ;
typedef scalar_t__ uv_membership ;
struct TYPE_12__ {int s_addr; } ;
struct sockaddr_in {TYPE_4__ sin_addr; } ;
struct TYPE_11__ {int s_addr; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct ip_mreq_source {TYPE_3__ imr_sourceaddr; TYPE_2__ imr_multiaddr; TYPE_1__ imr_interface; } ;
typedef int mreq ;


 int AF_INET ;
 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_ADD_SOURCE_MEMBERSHIP ;
 int IP_DROP_SOURCE_MEMBERSHIP ;
 int UV_EINVAL ;
 scalar_t__ UV_JOIN_GROUP ;
 scalar_t__ UV_LEAVE_GROUP ;
 int UV_UDP_REUSEADDR ;
 int UV__ERR (int ) ;
 int errno ;
 int htonl (int ) ;
 int memset (struct ip_mreq_source*,int ,int) ;
 scalar_t__ setsockopt (int ,int ,int,struct ip_mreq_source*,int) ;
 int uv__udp_maybe_deferred_bind (TYPE_6__*,int ,int ) ;
 int uv_inet_pton (int ,char const*,int *) ;

__attribute__((used)) static int uv__udp_set_source_membership4(uv_udp_t* handle,
                                          const struct sockaddr_in* multicast_addr,
                                          const char* interface_addr,
                                          const struct sockaddr_in* source_addr,
                                          uv_membership membership) {
  struct ip_mreq_source mreq;
  int optname;
  int err;

  err = uv__udp_maybe_deferred_bind(handle, AF_INET, UV_UDP_REUSEADDR);
  if (err)
    return err;

  memset(&mreq, 0, sizeof(mreq));

  if (interface_addr != ((void*)0)) {
    err = uv_inet_pton(AF_INET, interface_addr, &mreq.imr_interface.s_addr);
    if (err)
      return err;
  } else {
    mreq.imr_interface.s_addr = htonl(INADDR_ANY);
  }

  mreq.imr_multiaddr.s_addr = multicast_addr->sin_addr.s_addr;
  mreq.imr_sourceaddr.s_addr = source_addr->sin_addr.s_addr;

  if (membership == UV_JOIN_GROUP)
    optname = IP_ADD_SOURCE_MEMBERSHIP;
  else if (membership == UV_LEAVE_GROUP)
    optname = IP_DROP_SOURCE_MEMBERSHIP;
  else
    return UV_EINVAL;

  if (setsockopt(handle->io_watcher.fd,
                 IPPROTO_IP,
                 optname,
                 &mreq,
                 sizeof(mreq))) {
    return UV__ERR(errno);
  }

  return 0;
}
