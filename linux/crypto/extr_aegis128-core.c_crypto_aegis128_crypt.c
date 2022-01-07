
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aegis_block {int dummy; } aegis_block ;
struct crypto_aead {int dummy; } ;
struct aegis_state {int dummy; } ;
struct aegis_ctx {int key; } ;
struct aegis128_ops {int dummy; } ;
struct aead_request {int assoclen; int src; int iv; } ;


 struct aegis_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_aegis128_final (struct aegis_state*,union aegis_block*,int ,unsigned int) ;
 int crypto_aegis128_init (struct aegis_state*,int *,int ) ;
 int crypto_aegis128_process_ad (struct aegis_state*,int ,int ) ;
 int crypto_aegis128_process_crypt (struct aegis_state*,struct aead_request*,struct aegis128_ops const*) ;

__attribute__((used)) static void crypto_aegis128_crypt(struct aead_request *req,
      union aegis_block *tag_xor,
      unsigned int cryptlen,
      const struct aegis128_ops *ops)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct aegis_ctx *ctx = crypto_aead_ctx(tfm);
 struct aegis_state state;

 crypto_aegis128_init(&state, &ctx->key, req->iv);
 crypto_aegis128_process_ad(&state, req->src, req->assoclen);
 crypto_aegis128_process_crypt(&state, req, ops);
 crypto_aegis128_final(&state, tag_xor, req->assoclen, cryptlen);
}
