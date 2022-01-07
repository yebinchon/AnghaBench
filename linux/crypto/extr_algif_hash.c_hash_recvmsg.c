
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct hash_ctx {int result; int wait; int req; scalar_t__ more; } ;
struct alg_sock {struct hash_ctx* private; } ;


 int MSG_TRUNC ;
 int ahash_request_set_crypt (int *,int *,int,int ) ;
 struct alg_sock* alg_sk (struct sock*) ;
 unsigned int crypto_ahash_digestsize (int ) ;
 int crypto_ahash_final (int *) ;
 int crypto_ahash_init (int *) ;
 int crypto_ahash_reqtfm (int *) ;
 int crypto_wait_req (int ,int *) ;
 int hash_alloc_result (struct sock*,struct hash_ctx*) ;
 int hash_free_result (struct sock*,struct hash_ctx*) ;
 int lock_sock (struct sock*) ;
 int memcpy_to_msg (struct msghdr*,int,size_t) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int hash_recvmsg(struct socket *sock, struct msghdr *msg, size_t len,
   int flags)
{
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct hash_ctx *ctx = ask->private;
 unsigned ds = crypto_ahash_digestsize(crypto_ahash_reqtfm(&ctx->req));
 bool result;
 int err;

 if (len > ds)
  len = ds;
 else if (len < ds)
  msg->msg_flags |= MSG_TRUNC;

 lock_sock(sk);
 result = ctx->result;
 err = hash_alloc_result(sk, ctx);
 if (err)
  goto unlock;

 ahash_request_set_crypt(&ctx->req, ((void*)0), ctx->result, 0);

 if (!result && !ctx->more) {
  err = crypto_wait_req(crypto_ahash_init(&ctx->req),
          &ctx->wait);
  if (err)
   goto unlock;
 }

 if (!result || ctx->more) {
  ctx->more = 0;
  err = crypto_wait_req(crypto_ahash_final(&ctx->req),
          &ctx->wait);
  if (err)
   goto unlock;
 }

 err = memcpy_to_msg(msg, ctx->result, len);

unlock:
 hash_free_result(sk, ctx);
 release_sock(sk);

 return err ?: len;
}
