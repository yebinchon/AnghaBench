
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int s_fd; int s_flags; } ;
typedef int state ;


 int NLE_BAD_SOCK ;
 int NL_SOCK_PASSCRED ;
 int SOL_SOCKET ;
 int SO_PASSCRED ;
 int errno ;
 int nl_syserr2nlerr (int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

int nl_socket_set_passcred(struct nl_sock *sk, int state)
{
 int err;

 if (sk->s_fd == -1)
  return -NLE_BAD_SOCK;

 err = setsockopt(sk->s_fd, SOL_SOCKET, SO_PASSCRED,
    &state, sizeof(state));
 if (err < 0)
  return -nl_syserr2nlerr(errno);

 if (state)
  sk->s_flags |= NL_SOCK_PASSCRED;
 else
  sk->s_flags &= ~NL_SOCK_PASSCRED;

 return 0;
}
