
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcrypt_request {int dummy; } ;
struct pcrypt_aead_ctx {int cb_cpu; int child; } ;
struct padata_priv {int serial; int parallel; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int assoclen; int iv; int cryptlen; int dst; int src; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINPROGRESS ;
 struct pcrypt_request* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int ) ;
 int aead_request_set_callback (struct aead_request*,int,int ,struct aead_request*) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,int ,int ) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 struct pcrypt_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int memset (struct padata_priv*,int ,int) ;
 int padata_do_parallel (int ,struct padata_priv*,int *) ;
 int pcrypt_aead_done ;
 int pcrypt_aead_enc ;
 int pcrypt_aead_serial ;
 struct aead_request* pcrypt_request_ctx (struct pcrypt_request*) ;
 struct padata_priv* pcrypt_request_padata (struct pcrypt_request*) ;
 int pencrypt ;

__attribute__((used)) static int pcrypt_aead_encrypt(struct aead_request *req)
{
 int err;
 struct pcrypt_request *preq = aead_request_ctx(req);
 struct aead_request *creq = pcrypt_request_ctx(preq);
 struct padata_priv *padata = pcrypt_request_padata(preq);
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct pcrypt_aead_ctx *ctx = crypto_aead_ctx(aead);
 u32 flags = aead_request_flags(req);

 memset(padata, 0, sizeof(struct padata_priv));

 padata->parallel = pcrypt_aead_enc;
 padata->serial = pcrypt_aead_serial;

 aead_request_set_tfm(creq, ctx->child);
 aead_request_set_callback(creq, flags & ~CRYPTO_TFM_REQ_MAY_SLEEP,
      pcrypt_aead_done, req);
 aead_request_set_crypt(creq, req->src, req->dst,
          req->cryptlen, req->iv);
 aead_request_set_ad(creq, req->assoclen);

 err = padata_do_parallel(pencrypt, padata, &ctx->cb_cpu);
 if (!err)
  return -EINPROGRESS;

 return err;
}
