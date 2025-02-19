
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_walk {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aegis_state {int dummy; } ;
struct TYPE_2__ {int bytes; } ;
struct aegis_ctx {TYPE_1__ key; } ;
struct aegis_crypt_ops {int (* skcipher_walk_init ) (struct skcipher_walk*,struct aead_request*,int) ;} ;
struct aegis_block {int dummy; } ;
struct aead_request {int assoclen; int src; int iv; } ;


 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct aegis_ctx* crypto_aegis128_aesni_ctx (struct crypto_aead*) ;
 int crypto_aegis128_aesni_final (struct aegis_state*,struct aegis_block*,int ,unsigned int) ;
 int crypto_aegis128_aesni_init (struct aegis_state*,int ,int ) ;
 int crypto_aegis128_aesni_process_ad (struct aegis_state*,int ,int ) ;
 int crypto_aegis128_aesni_process_crypt (struct aegis_state*,struct skcipher_walk*,struct aegis_crypt_ops const*) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 int stub1 (struct skcipher_walk*,struct aead_request*,int) ;

__attribute__((used)) static void crypto_aegis128_aesni_crypt(struct aead_request *req,
     struct aegis_block *tag_xor,
     unsigned int cryptlen,
     const struct aegis_crypt_ops *ops)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct aegis_ctx *ctx = crypto_aegis128_aesni_ctx(tfm);
 struct skcipher_walk walk;
 struct aegis_state state;

 ops->skcipher_walk_init(&walk, req, 1);

 kernel_fpu_begin();

 crypto_aegis128_aesni_init(&state, ctx->key.bytes, req->iv);
 crypto_aegis128_aesni_process_ad(&state, req->src, req->assoclen);
 crypto_aegis128_aesni_process_crypt(&state, &walk, ops);
 crypto_aegis128_aesni_final(&state, tag_xor, req->assoclen, cryptlen);

 kernel_fpu_end();
}
