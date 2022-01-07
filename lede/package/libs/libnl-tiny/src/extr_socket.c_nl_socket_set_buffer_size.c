
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int txbuf ;
struct nl_sock {int s_fd; int s_flags; } ;
typedef int rxbuf ;


 int NLE_BAD_SOCK ;
 int NL_SOCK_BUFSIZE_SET ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int errno ;
 int nl_syserr2nlerr (int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

int nl_socket_set_buffer_size(struct nl_sock *sk, int rxbuf, int txbuf)
{
 int err;

 if (rxbuf <= 0)
  rxbuf = 32768;

 if (txbuf <= 0)
  txbuf = 32768;

 if (sk->s_fd == -1)
  return -NLE_BAD_SOCK;

 err = setsockopt(sk->s_fd, SOL_SOCKET, SO_SNDBUF,
    &txbuf, sizeof(txbuf));
 if (err < 0)
  return -nl_syserr2nlerr(errno);

 err = setsockopt(sk->s_fd, SOL_SOCKET, SO_RCVBUF,
    &rxbuf, sizeof(rxbuf));
 if (err < 0)
  return -nl_syserr2nlerr(errno);

 sk->s_flags |= NL_SOCK_BUFSIZE_SET;

 return 0;
}
