
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct pkcs7_parse_context {int expect_skid; TYPE_1__* msg; } ;
struct TYPE_2__ {int version; } ;


 int EBADMSG ;
 int EINVAL ;
 int pr_warn (char*) ;

int pkcs7_note_signerinfo_version(void *context, size_t hdrlen,
      unsigned char tag,
      const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;
 unsigned version;

 if (vlen != 1)
  goto unsupported;

 version = *(const u8 *)value;
 switch (version) {
 case 1:



  if (ctx->msg->version != 1)
   goto version_mismatch;
  ctx->expect_skid = 0;
  break;
 case 3:

  if (ctx->msg->version == 1)
   goto version_mismatch;
  ctx->expect_skid = 1;
  break;
 default:
  goto unsupported;
 }

 return 0;

unsupported:
 pr_warn("Unsupported SignerInfo version\n");
 return -EINVAL;
version_mismatch:
 pr_warn("SignedData-SignerInfo version mismatch\n");
 return -EBADMSG;
}
