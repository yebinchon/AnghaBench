
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int aead_check_key (struct socket*) ;
 int aead_recvmsg (struct socket*,struct msghdr*,size_t,int) ;

__attribute__((used)) static int aead_recvmsg_nokey(struct socket *sock, struct msghdr *msg,
      size_t ignored, int flags)
{
 int err;

 err = aead_check_key(sock);
 if (err)
  return err;

 return aead_recvmsg(sock, msg, ignored, flags);
}
