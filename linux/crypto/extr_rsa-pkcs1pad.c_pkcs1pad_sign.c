
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsa_asn1_template {unsigned int size; int data; } ;
struct pkcs1pad_request {int* in_buf; int child_req; int in_sg; } ;
struct pkcs1pad_inst_ctx {struct rsa_asn1_template* digest_info; } ;
struct pkcs1pad_ctx {int key_size; int child; } ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct akcipher_request {int src_len; int dst_len; int dst; TYPE_1__ base; int src; } ;
struct akcipher_instance {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_KERNEL ;
 struct akcipher_instance* akcipher_alg_instance (struct crypto_akcipher*) ;
 struct pkcs1pad_inst_ctx* akcipher_instance_ctx (struct akcipher_instance*) ;
 struct pkcs1pad_request* akcipher_request_ctx (struct akcipher_request*) ;
 int akcipher_request_set_callback (int *,int ,int ,struct akcipher_request*) ;
 int akcipher_request_set_crypt (int *,int ,int ,int,int) ;
 int akcipher_request_set_tfm (int *,int ) ;
 struct pkcs1pad_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int crypto_akcipher_decrypt (int *) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int ,unsigned int) ;
 int memset (int*,int,unsigned int) ;
 int pkcs1pad_encrypt_sign_complete (struct akcipher_request*,int) ;
 int pkcs1pad_encrypt_sign_complete_cb ;
 int pkcs1pad_sg_set_buf (int ,int*,unsigned int,int ) ;

__attribute__((used)) static int pkcs1pad_sign(struct akcipher_request *req)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct pkcs1pad_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct pkcs1pad_request *req_ctx = akcipher_request_ctx(req);
 struct akcipher_instance *inst = akcipher_alg_instance(tfm);
 struct pkcs1pad_inst_ctx *ictx = akcipher_instance_ctx(inst);
 const struct rsa_asn1_template *digest_info = ictx->digest_info;
 int err;
 unsigned int ps_end, digest_size = 0;

 if (!ctx->key_size)
  return -EINVAL;

 if (digest_info)
  digest_size = digest_info->size;

 if (req->src_len + digest_size > ctx->key_size - 11)
  return -EOVERFLOW;

 if (req->dst_len < ctx->key_size) {
  req->dst_len = ctx->key_size;
  return -EOVERFLOW;
 }

 req_ctx->in_buf = kmalloc(ctx->key_size - 1 - req->src_len,
      GFP_KERNEL);
 if (!req_ctx->in_buf)
  return -ENOMEM;

 ps_end = ctx->key_size - digest_size - req->src_len - 2;
 req_ctx->in_buf[0] = 0x01;
 memset(req_ctx->in_buf + 1, 0xff, ps_end - 1);
 req_ctx->in_buf[ps_end] = 0x00;

 if (digest_info)
  memcpy(req_ctx->in_buf + ps_end + 1, digest_info->data,
         digest_info->size);

 pkcs1pad_sg_set_buf(req_ctx->in_sg, req_ctx->in_buf,
   ctx->key_size - 1 - req->src_len, req->src);

 akcipher_request_set_tfm(&req_ctx->child_req, ctx->child);
 akcipher_request_set_callback(&req_ctx->child_req, req->base.flags,
   pkcs1pad_encrypt_sign_complete_cb, req);


 akcipher_request_set_crypt(&req_ctx->child_req, req_ctx->in_sg,
       req->dst, ctx->key_size - 1, req->dst_len);

 err = crypto_akcipher_decrypt(&req_ctx->child_req);
 if (err != -EINPROGRESS && err != -EBUSY)
  return pkcs1pad_encrypt_sign_complete(req, err);

 return err;
}
