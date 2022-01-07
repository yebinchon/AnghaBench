
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int aead_check_key (struct socket*) ;
 int aead_sendmsg (struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static int aead_sendmsg_nokey(struct socket *sock, struct msghdr *msg,
      size_t size)
{
 int err;

 err = aead_check_key(sock);
 if (err)
  return err;

 return aead_sendmsg(sock, msg, size);
}
