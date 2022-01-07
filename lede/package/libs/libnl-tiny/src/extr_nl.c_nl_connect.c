
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ nl_family; } ;
struct nl_sock {int s_fd; int s_flags; int s_proto; TYPE_1__ s_local; } ;
typedef int socklen_t ;


 scalar_t__ AF_NETLINK ;
 int NLE_AF_NOSUPPORT ;
 int NLE_NOADDR ;
 int NL_SOCK_BUFSIZE_SET ;
 int SOCK_RAW ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int getsockname (int,struct sockaddr*,int*) ;
 int nl_socket_set_buffer_size (struct nl_sock*,int ,int ) ;
 int nl_syserr2nlerr (int ) ;
 int socket (scalar_t__,int ,int) ;

int nl_connect(struct nl_sock *sk, int protocol)
{
 int err;
 socklen_t addrlen;

 sk->s_fd = socket(AF_NETLINK, SOCK_RAW, protocol);
 if (sk->s_fd < 0) {
  err = -nl_syserr2nlerr(errno);
  goto errout;
 }

 if (!(sk->s_flags & NL_SOCK_BUFSIZE_SET)) {
  err = nl_socket_set_buffer_size(sk, 0, 0);
  if (err < 0)
   goto errout;
 }

 err = bind(sk->s_fd, (struct sockaddr*) &sk->s_local,
     sizeof(sk->s_local));
 if (err < 0) {
  err = -nl_syserr2nlerr(errno);
  goto errout;
 }

 addrlen = sizeof(sk->s_local);
 err = getsockname(sk->s_fd, (struct sockaddr *) &sk->s_local,
     &addrlen);
 if (err < 0) {
  err = -nl_syserr2nlerr(errno);
  goto errout;
 }

 if (addrlen != sizeof(sk->s_local)) {
  err = -NLE_NOADDR;
  goto errout;
 }

 if (sk->s_local.nl_family != AF_NETLINK) {
  err = -NLE_AF_NOSUPPORT;
  goto errout;
 }

 sk->s_proto = protocol;

 return 0;
errout:
 close(sk->s_fd);
 sk->s_fd = -1;

 return err;
}
