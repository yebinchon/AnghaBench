
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_sndbuf; } ;
struct msghdr {int msg_flags; int msg_iter; } ;
struct TYPE_3__ {int * sg; } ;
struct hash_ctx {int more; int wait; int req; int * result; TYPE_1__ sgl; } ;
struct alg_sock {struct hash_ctx* private; } ;


 int ALG_MAX_PAGES ;
 int MSG_MORE ;
 int PAGE_SIZE ;
 int af_alg_free_sg (TYPE_1__*) ;
 int af_alg_make_sg (TYPE_1__*,int *,int) ;
 int ahash_request_set_crypt (int *,int *,int *,int) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_ahash_final (int *) ;
 int crypto_ahash_init (int *) ;
 int crypto_ahash_update (int *) ;
 int crypto_wait_req (int ,int *) ;
 int hash_alloc_result (struct sock*,struct hash_ctx*) ;
 int hash_free_result (struct sock*,struct hash_ctx*) ;
 int iov_iter_advance (int *,int) ;
 int lock_sock (struct sock*) ;
 int msg_data_left (struct msghdr*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int hash_sendmsg(struct socket *sock, struct msghdr *msg,
   size_t ignored)
{
 int limit = ALG_MAX_PAGES * PAGE_SIZE;
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct hash_ctx *ctx = ask->private;
 long copied = 0;
 int err;

 if (limit > sk->sk_sndbuf)
  limit = sk->sk_sndbuf;

 lock_sock(sk);
 if (!ctx->more) {
  if ((msg->msg_flags & MSG_MORE))
   hash_free_result(sk, ctx);

  err = crypto_wait_req(crypto_ahash_init(&ctx->req), &ctx->wait);
  if (err)
   goto unlock;
 }

 ctx->more = 0;

 while (msg_data_left(msg)) {
  int len = msg_data_left(msg);

  if (len > limit)
   len = limit;

  len = af_alg_make_sg(&ctx->sgl, &msg->msg_iter, len);
  if (len < 0) {
   err = copied ? 0 : len;
   goto unlock;
  }

  ahash_request_set_crypt(&ctx->req, ctx->sgl.sg, ((void*)0), len);

  err = crypto_wait_req(crypto_ahash_update(&ctx->req),
          &ctx->wait);
  af_alg_free_sg(&ctx->sgl);
  if (err)
   goto unlock;

  copied += len;
  iov_iter_advance(&msg->msg_iter, len);
 }

 err = 0;

 ctx->more = msg->msg_flags & MSG_MORE;
 if (!ctx->more) {
  err = hash_alloc_result(sk, ctx);
  if (err)
   goto unlock;

  ahash_request_set_crypt(&ctx->req, ((void*)0), ctx->result, 0);
  err = crypto_wait_req(crypto_ahash_final(&ctx->req),
          &ctx->wait);
 }

unlock:
 release_sock(sk);

 return err ?: copied;
}
