
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int data; int complete; int flags; } ;
struct aead_request {unsigned int cryptlen; int* iv; int assoclen; int dst; TYPE_1__ base; int src; } ;
struct aead_geniv_ctx {int* salt; int sknull; int child; } ;
typedef int __be64 ;


 int EINVAL ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct aead_request* aead_request_ctx (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int ) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,int ) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,unsigned int,int*) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 int be64_to_cpu (int) ;
 struct aead_geniv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_skcipher_encrypt (int ) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,unsigned int) ;
 int nreq ;
 int scatterwalk_map_and_copy (int*,int ,int ,unsigned int,int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,int *) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;

__attribute__((used)) static int echainiv_encrypt(struct aead_request *req)
{
 struct crypto_aead *geniv = crypto_aead_reqtfm(req);
 struct aead_geniv_ctx *ctx = crypto_aead_ctx(geniv);
 struct aead_request *subreq = aead_request_ctx(req);
 __be64 nseqno;
 u64 seqno;
 u8 *info;
 unsigned int ivsize = crypto_aead_ivsize(geniv);
 int err;

 if (req->cryptlen < ivsize)
  return -EINVAL;

 aead_request_set_tfm(subreq, ctx->child);

 info = req->iv;

 if (req->src != req->dst) {
  SYNC_SKCIPHER_REQUEST_ON_STACK(nreq, ctx->sknull);

  skcipher_request_set_sync_tfm(nreq, ctx->sknull);
  skcipher_request_set_callback(nreq, req->base.flags,
           ((void*)0), ((void*)0));
  skcipher_request_set_crypt(nreq, req->src, req->dst,
        req->assoclen + req->cryptlen,
        ((void*)0));

  err = crypto_skcipher_encrypt(nreq);
  if (err)
   return err;
 }

 aead_request_set_callback(subreq, req->base.flags,
      req->base.complete, req->base.data);
 aead_request_set_crypt(subreq, req->dst, req->dst,
          req->cryptlen, info);
 aead_request_set_ad(subreq, req->assoclen);

 memcpy(&nseqno, info + ivsize - 8, 8);
 seqno = be64_to_cpu(nseqno);
 memset(info, 0, ivsize);

 scatterwalk_map_and_copy(info, req->dst, req->assoclen, ivsize, 1);

 do {
  u64 a;

  memcpy(&a, ctx->salt + ivsize - 8, 8);

  a |= 1;
  a *= seqno;

  memcpy(info + ivsize - 8, &a, 8);
 } while ((ivsize -= 8));

 return crypto_aead_encrypt(subreq);
}
