
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs8_parse_context {scalar_t__ last_oid; TYPE_1__* pub; } ;
struct TYPE_2__ {char* pkey_algo; } ;


 int ENOPKG ;
 scalar_t__ OID_rsaEncryption ;

int pkcs8_note_algo(void *context, size_t hdrlen,
      unsigned char tag,
      const void *value, size_t vlen)
{
 struct pkcs8_parse_context *ctx = context;

 if (ctx->last_oid != OID_rsaEncryption)
  return -ENOPKG;

 ctx->pub->pkey_algo = "rsa";
 return 0;
}
