
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int hash_accept (struct socket*,struct socket*,int,int) ;
 int hash_check_key (struct socket*) ;

__attribute__((used)) static int hash_accept_nokey(struct socket *sock, struct socket *newsock,
        int flags, bool kern)
{
 int err;

 err = hash_check_key(sock);
 if (err)
  return err;

 return hash_accept(sock, newsock, flags, kern);
}
