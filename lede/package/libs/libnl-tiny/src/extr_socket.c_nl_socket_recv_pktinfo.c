
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int s_fd; } ;
typedef int state ;


 int NETLINK_PKTINFO ;
 int NLE_BAD_SOCK ;
 int SOL_NETLINK ;
 int errno ;
 int nl_syserr2nlerr (int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

int nl_socket_recv_pktinfo(struct nl_sock *sk, int state)
{
 int err;

 if (sk->s_fd == -1)
  return -NLE_BAD_SOCK;

 err = setsockopt(sk->s_fd, SOL_NETLINK, NETLINK_PKTINFO,
    &state, sizeof(state));
 if (err < 0)
  return -nl_syserr2nlerr(errno);

 return 0;
}
