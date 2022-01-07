
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pkcs7_parse_context {int last_oid; TYPE_2__* sinfo; } ;
struct TYPE_4__ {TYPE_1__* sig; } ;
struct TYPE_3__ {char* hash_algo; } ;


 int ENOPKG ;







 int printk (char*,int) ;

int pkcs7_sig_note_digest_algo(void *context, size_t hdrlen,
          unsigned char tag,
          const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;

 switch (ctx->last_oid) {
 case 134:
  ctx->sinfo->sig->hash_algo = "md4";
  break;
 case 133:
  ctx->sinfo->sig->hash_algo = "md5";
  break;
 case 132:
  ctx->sinfo->sig->hash_algo = "sha1";
  break;
 case 130:
  ctx->sinfo->sig->hash_algo = "sha256";
  break;
 case 129:
  ctx->sinfo->sig->hash_algo = "sha384";
  break;
 case 128:
  ctx->sinfo->sig->hash_algo = "sha512";
  break;
 case 131:
  ctx->sinfo->sig->hash_algo = "sha224";
  break;
 default:
  printk("Unsupported digest algo: %u\n", ctx->last_oid);
  return -ENOPKG;
 }
 return 0;
}
