
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int EIOCBQUEUED ;
 int _skcipher_recvmsg (struct socket*,struct msghdr*,size_t,int) ;
 int af_alg_wmem_wakeup (struct sock*) ;
 int lock_sock (struct sock*) ;
 scalar_t__ msg_data_left (struct msghdr*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int skcipher_recvmsg(struct socket *sock, struct msghdr *msg,
       size_t ignored, int flags)
{
 struct sock *sk = sock->sk;
 int ret = 0;

 lock_sock(sk);
 while (msg_data_left(msg)) {
  int err = _skcipher_recvmsg(sock, msg, ignored, flags);
  if (err <= 0) {
   if (err == -EIOCBQUEUED || !ret)
    ret = err;
   goto out;
  }

  ret += err;
 }

out:
 af_alg_wmem_wakeup(sk);
 release_sock(sk);
 return ret;
}
