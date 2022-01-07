
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int af_alg_accept (int ,struct socket*,int) ;

__attribute__((used)) static int alg_accept(struct socket *sock, struct socket *newsock, int flags,
        bool kern)
{
 return af_alg_accept(sock->sk, newsock, kern);
}
