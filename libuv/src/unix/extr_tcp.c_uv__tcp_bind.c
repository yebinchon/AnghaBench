
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {int delayed_error; int flags; TYPE_1__ io_watcher; } ;
typedef TYPE_2__ uv_tcp_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int on ;


 scalar_t__ AF_INET6 ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ EOPNOTSUPP ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int UV_EINVAL ;
 int UV_HANDLE_BOUND ;
 int UV_HANDLE_IPV6 ;
 unsigned int UV_TCP_IPV6ONLY ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ bind (int ,struct sockaddr const*,unsigned int) ;
 scalar_t__ errno ;
 int maybe_new_socket (TYPE_2__*,scalar_t__,int ) ;
 int setsockopt (int ,int ,int ,int*,int) ;

int uv__tcp_bind(uv_tcp_t* tcp,
                 const struct sockaddr* addr,
                 unsigned int addrlen,
                 unsigned int flags) {
  int err;
  int on;


  if ((flags & UV_TCP_IPV6ONLY) && addr->sa_family != AF_INET6)
    return UV_EINVAL;

  err = maybe_new_socket(tcp, addr->sa_family, 0);
  if (err)
    return err;

  on = 1;
  if (setsockopt(tcp->io_watcher.fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)))
    return UV__ERR(errno);
  errno = 0;
  if (bind(tcp->io_watcher.fd, addr, addrlen) && errno != EADDRINUSE) {
    if (errno == EAFNOSUPPORT)


      return UV_EINVAL;
    return UV__ERR(errno);
  }
  tcp->delayed_error = UV__ERR(errno);

  tcp->flags |= UV_HANDLE_BOUND;
  if (addr->sa_family == AF_INET6)
    tcp->flags |= UV_HANDLE_IPV6;

  return 0;
}
