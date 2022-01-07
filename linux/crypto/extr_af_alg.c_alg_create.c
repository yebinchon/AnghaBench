
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; } ;
struct sock {int sk_destruct; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_ALG ;
 scalar_t__ SOCK_SEQPACKET ;
 int alg_proto ;
 int alg_proto_ops ;
 int alg_sock_destruct ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int alg_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 struct sock *sk;
 int err;

 if (sock->type != SOCK_SEQPACKET)
  return -ESOCKTNOSUPPORT;
 if (protocol != 0)
  return -EPROTONOSUPPORT;

 err = -ENOMEM;
 sk = sk_alloc(net, PF_ALG, GFP_KERNEL, &alg_proto, kern);
 if (!sk)
  goto out;

 sock->ops = &alg_proto_ops;
 sock_init_data(sock, sk);

 sk->sk_destruct = alg_sock_destruct;

 return 0;
out:
 return err;
}
