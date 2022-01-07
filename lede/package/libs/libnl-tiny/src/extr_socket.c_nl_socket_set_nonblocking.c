
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int s_fd; } ;


 int F_SETFL ;
 int NLE_BAD_SOCK ;
 int O_NONBLOCK ;
 int errno ;
 scalar_t__ fcntl (int,int ,int ) ;
 int nl_syserr2nlerr (int ) ;

int nl_socket_set_nonblocking(struct nl_sock *sk)
{
 if (sk->s_fd == -1)
  return -NLE_BAD_SOCK;

 if (fcntl(sk->s_fd, F_SETFL, O_NONBLOCK) < 0)
  return -nl_syserr2nlerr(errno);

 return 0;
}
