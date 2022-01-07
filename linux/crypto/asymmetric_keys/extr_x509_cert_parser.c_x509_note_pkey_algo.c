
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x509_parse_context {int last_oid; int algo_oid; TYPE_2__* cert; } ;
struct TYPE_4__ {TYPE_1__* sig; } ;
struct TYPE_3__ {char* hash_algo; char* pkey_algo; char* encoding; } ;


 int ENOPKG ;
 int pr_debug (char*,int) ;

int x509_note_pkey_algo(void *context, size_t hdrlen,
   unsigned char tag,
   const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;

 pr_debug("PubKey Algo: %u\n", ctx->last_oid);

 switch (ctx->last_oid) {
 case 135:
 case 134:
 default:
  return -ENOPKG;

 case 133:
  ctx->cert->sig->hash_algo = "md4";
  goto rsa_pkcs1;

 case 132:
  ctx->cert->sig->hash_algo = "sha1";
  goto rsa_pkcs1;

 case 130:
  ctx->cert->sig->hash_algo = "sha256";
  goto rsa_pkcs1;

 case 129:
  ctx->cert->sig->hash_algo = "sha384";
  goto rsa_pkcs1;

 case 128:
  ctx->cert->sig->hash_algo = "sha512";
  goto rsa_pkcs1;

 case 131:
  ctx->cert->sig->hash_algo = "sha224";
  goto rsa_pkcs1;

 case 137:
  ctx->cert->sig->hash_algo = "streebog256";
  goto ecrdsa;

 case 136:
  ctx->cert->sig->hash_algo = "streebog512";
  goto ecrdsa;
 }

rsa_pkcs1:
 ctx->cert->sig->pkey_algo = "rsa";
 ctx->cert->sig->encoding = "pkcs1";
 ctx->algo_oid = ctx->last_oid;
 return 0;
ecrdsa:
 ctx->cert->sig->pkey_algo = "ecrdsa";
 ctx->cert->sig->encoding = "raw";
 ctx->algo_oid = ctx->last_oid;
 return 0;
}
