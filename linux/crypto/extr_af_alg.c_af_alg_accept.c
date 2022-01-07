
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int ops; int state; } ;
struct sock {int dummy; } ;
struct alg_sock {unsigned int nokey_refcnt; struct af_alg_type const* type; struct sock* parent; int refcnt; int private; } ;
typedef struct af_alg_type {int (* accept ) (int ,struct sock*) ;int (* accept_nokey ) (int ,struct sock*) ;int ops_nokey; int ops; } const af_alg_type ;


 int EINVAL ;
 int ENOKEY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PF_ALG ;
 int SS_CONNECTED ;
 int alg_proto ;
 struct alg_sock* alg_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int security_sk_clone (struct sock*,struct sock*) ;
 int security_sock_graft (struct sock*,struct socket*) ;
 struct sock* sk_alloc (int ,int ,int ,int *,int) ;
 int sock_hold (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (int ,struct sock*) ;
 int stub2 (int ,struct sock*) ;

int af_alg_accept(struct sock *sk, struct socket *newsock, bool kern)
{
 struct alg_sock *ask = alg_sk(sk);
 const struct af_alg_type *type;
 struct sock *sk2;
 unsigned int nokey;
 int err;

 lock_sock(sk);
 type = ask->type;

 err = -EINVAL;
 if (!type)
  goto unlock;

 sk2 = sk_alloc(sock_net(sk), PF_ALG, GFP_KERNEL, &alg_proto, kern);
 err = -ENOMEM;
 if (!sk2)
  goto unlock;

 sock_init_data(newsock, sk2);
 security_sock_graft(sk2, newsock);
 security_sk_clone(sk, sk2);

 err = type->accept(ask->private, sk2);

 nokey = err == -ENOKEY;
 if (nokey && type->accept_nokey)
  err = type->accept_nokey(ask->private, sk2);

 if (err)
  goto unlock;

 if (nokey || !ask->refcnt++)
  sock_hold(sk);
 ask->nokey_refcnt += nokey;
 alg_sk(sk2)->parent = sk;
 alg_sk(sk2)->type = type;
 alg_sk(sk2)->nokey_refcnt = nokey;

 newsock->ops = type->ops;
 newsock->state = SS_CONNECTED;

 if (nokey)
  newsock->ops = type->ops_nokey;

 err = 0;

unlock:
 release_sock(sk);

 return err;
}
