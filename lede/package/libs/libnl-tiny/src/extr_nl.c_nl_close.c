
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int s_fd; scalar_t__ s_proto; } ;


 int close (int) ;

void nl_close(struct nl_sock *sk)
{
 if (sk->s_fd >= 0) {
  close(sk->s_fd);
  sk->s_fd = -1;
 }

 sk->s_proto = 0;
}
