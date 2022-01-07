
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs1pad_request {int child_req; int out_sg; int out_buf; } ;
struct pkcs1pad_ctx {scalar_t__ key_size; int child; } ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct akcipher_request {scalar_t__ src_len; int src; TYPE_1__ base; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct pkcs1pad_request* akcipher_request_ctx (struct akcipher_request*) ;
 int akcipher_request_set_callback (int *,int ,int ,struct akcipher_request*) ;
 int akcipher_request_set_crypt (int *,int ,int ,scalar_t__,scalar_t__) ;
 int akcipher_request_set_tfm (int *,int ) ;
 struct pkcs1pad_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int crypto_akcipher_decrypt (int *) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int kmalloc (scalar_t__,int ) ;
 int pkcs1pad_decrypt_complete (struct akcipher_request*,int) ;
 int pkcs1pad_decrypt_complete_cb ;
 int pkcs1pad_sg_set_buf (int ,int ,scalar_t__,int *) ;

__attribute__((used)) static int pkcs1pad_decrypt(struct akcipher_request *req)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct pkcs1pad_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct pkcs1pad_request *req_ctx = akcipher_request_ctx(req);
 int err;

 if (!ctx->key_size || req->src_len != ctx->key_size)
  return -EINVAL;

 req_ctx->out_buf = kmalloc(ctx->key_size, GFP_KERNEL);
 if (!req_ctx->out_buf)
  return -ENOMEM;

 pkcs1pad_sg_set_buf(req_ctx->out_sg, req_ctx->out_buf,
       ctx->key_size, ((void*)0));

 akcipher_request_set_tfm(&req_ctx->child_req, ctx->child);
 akcipher_request_set_callback(&req_ctx->child_req, req->base.flags,
   pkcs1pad_decrypt_complete_cb, req);


 akcipher_request_set_crypt(&req_ctx->child_req, req->src,
       req_ctx->out_sg, req->src_len,
       ctx->key_size);

 err = crypto_akcipher_decrypt(&req_ctx->child_req);
 if (err != -EINPROGRESS && err != -EBUSY)
  return pkcs1pad_decrypt_complete(req, err);

 return err;
}
