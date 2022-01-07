
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct ahash_request {int dummy; } ;
struct hash_ctx {int more; struct ahash_request req; } ;
struct alg_sock {struct hash_ctx* private; int parent; } ;


 int HASH_MAX_STATESIZE ;
 int af_alg_accept (int ,struct socket*,int) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_ahash_export (struct ahash_request*,char*) ;
 int crypto_ahash_import (struct ahash_request*,char*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int hash_accept(struct socket *sock, struct socket *newsock, int flags,
         bool kern)
{
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct hash_ctx *ctx = ask->private;
 struct ahash_request *req = &ctx->req;
 char state[HASH_MAX_STATESIZE];
 struct sock *sk2;
 struct alg_sock *ask2;
 struct hash_ctx *ctx2;
 bool more;
 int err;

 lock_sock(sk);
 more = ctx->more;
 err = more ? crypto_ahash_export(req, state) : 0;
 release_sock(sk);

 if (err)
  return err;

 err = af_alg_accept(ask->parent, newsock, kern);
 if (err)
  return err;

 sk2 = newsock->sk;
 ask2 = alg_sk(sk2);
 ctx2 = ask2->private;
 ctx2->more = more;

 if (!more)
  return err;

 err = crypto_ahash_import(&ctx2->req, state);
 if (err) {
  sock_orphan(sk2);
  sock_put(sk2);
 }

 return err;
}
