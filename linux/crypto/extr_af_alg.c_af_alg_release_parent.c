
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct alg_sock {unsigned int nokey_refcnt; int refcnt; struct sock* parent; } ;


 struct alg_sock* alg_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_put (struct sock*) ;

void af_alg_release_parent(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);
 unsigned int nokey = ask->nokey_refcnt;
 bool last = nokey && !ask->refcnt;

 sk = ask->parent;
 ask = alg_sk(sk);

 lock_sock(sk);
 ask->nokey_refcnt -= nokey;
 if (!last)
  last = !--ask->refcnt;
 release_sock(sk);

 if (last)
  sock_put(sk);
}
