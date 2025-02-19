
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct alg_sock {int refcnt; struct crypto_ahash* private; struct sock* parent; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int ENOKEY ;
 int SINGLE_DEPTH_NESTING ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int lock_sock (struct sock*) ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int hash_check_key(struct socket *sock)
{
 int err = 0;
 struct sock *psk;
 struct alg_sock *pask;
 struct crypto_ahash *tfm;
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);

 lock_sock(sk);
 if (ask->refcnt)
  goto unlock_child;

 psk = ask->parent;
 pask = alg_sk(ask->parent);
 tfm = pask->private;

 err = -ENOKEY;
 lock_sock_nested(psk, SINGLE_DEPTH_NESTING);
 if (crypto_ahash_get_flags(tfm) & CRYPTO_TFM_NEED_KEY)
  goto unlock;

 if (!pask->refcnt++)
  sock_hold(psk);

 ask->refcnt = 1;
 sock_put(psk);

 err = 0;

unlock:
 release_sock(psk);
unlock_child:
 release_sock(sk);

 return err;
}
