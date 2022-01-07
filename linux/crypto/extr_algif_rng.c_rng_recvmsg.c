
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct rng_ctx {int drng; } ;
struct msghdr {int dummy; } ;
struct alg_sock {struct rng_ctx* private; } ;


 int EFAULT ;
 int MAXSIZE ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_rng_get_bytes (int ,int *,size_t) ;
 int memcpy_to_msg (struct msghdr*,int *,size_t) ;
 int memset (int *,int ,size_t) ;
 int memzero_explicit (int *,size_t) ;

__attribute__((used)) static int rng_recvmsg(struct socket *sock, struct msghdr *msg, size_t len,
         int flags)
{
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct rng_ctx *ctx = ask->private;
 int err = -EFAULT;
 int genlen = 0;
 u8 result[MAXSIZE];

 if (len == 0)
  return 0;
 if (len > MAXSIZE)
  len = MAXSIZE;





 memset(result, 0, len);







 genlen = crypto_rng_get_bytes(ctx->drng, result, len);
 if (genlen < 0)
  return genlen;

 err = memcpy_to_msg(msg, result, len);
 memzero_explicit(result, len);

 return err ? err : len;
}
