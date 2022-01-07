
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * sk; } ;


 int sock_put (int *) ;

int af_alg_release(struct socket *sock)
{
 if (sock->sk) {
  sock_put(sock->sk);
  sock->sk = ((void*)0);
 }
 return 0;
}
