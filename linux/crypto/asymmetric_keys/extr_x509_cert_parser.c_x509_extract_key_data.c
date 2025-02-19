
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct x509_parse_context {scalar_t__ key_algo; scalar_t__ last_oid; size_t key_size; void const* key; TYPE_2__* cert; } ;
struct TYPE_4__ {TYPE_1__* pub; } ;
struct TYPE_3__ {char* pkey_algo; } ;


 int EBADMSG ;
 int ENOPKG ;
 scalar_t__ OID_gost2012PKey256 ;
 scalar_t__ OID_gost2012PKey512 ;
 scalar_t__ OID_rsaEncryption ;

int x509_extract_key_data(void *context, size_t hdrlen,
     unsigned char tag,
     const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;

 ctx->key_algo = ctx->last_oid;
 if (ctx->last_oid == OID_rsaEncryption)
  ctx->cert->pub->pkey_algo = "rsa";
 else if (ctx->last_oid == OID_gost2012PKey256 ||
   ctx->last_oid == OID_gost2012PKey512)
  ctx->cert->pub->pkey_algo = "ecrdsa";
 else
  return -ENOPKG;


 if (vlen < 1 || *(const u8 *)value != 0)
  return -EBADMSG;
 ctx->key = value + 1;
 ctx->key_size = vlen - 1;
 return 0;
}
