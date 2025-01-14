
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; struct sock* parent; } ;
struct af_alg_ctx {scalar_t__ used; scalar_t__ aead_assoclen; scalar_t__ enc; struct crypto_aead* aead; } ;
struct aead_tfm {scalar_t__ used; scalar_t__ aead_assoclen; scalar_t__ enc; struct crypto_aead* aead; } ;


 struct alg_sock* alg_sk (struct sock*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;

__attribute__((used)) static inline bool aead_sufficient_data(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);
 struct sock *psk = ask->parent;
 struct alg_sock *pask = alg_sk(psk);
 struct af_alg_ctx *ctx = ask->private;
 struct aead_tfm *aeadc = pask->private;
 struct crypto_aead *tfm = aeadc->aead;
 unsigned int as = crypto_aead_authsize(tfm);





 return ctx->used >= ctx->aead_assoclen + (ctx->enc ? 0 : as);
}
