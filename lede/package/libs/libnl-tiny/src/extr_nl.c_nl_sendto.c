
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nl_sock {int s_peer; int s_fd; } ;


 int errno ;
 int nl_syserr2nlerr (int ) ;
 int sendto (int ,void*,size_t,int ,struct sockaddr*,int) ;

int nl_sendto(struct nl_sock *sk, void *buf, size_t size)
{
 int ret;

 ret = sendto(sk->s_fd, buf, size, 0, (struct sockaddr *)
       &sk->s_peer, sizeof(sk->s_peer));
 if (ret < 0)
  return -nl_syserr2nlerr(errno);

 return ret;
}
