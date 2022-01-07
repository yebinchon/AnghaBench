
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct pkcs7_parse_context {TYPE_1__* msg; } ;
struct TYPE_2__ {unsigned int version; } ;


 int EINVAL ;
 int pr_warn (char*) ;

int pkcs7_note_signeddata_version(void *context, size_t hdrlen,
      unsigned char tag,
      const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;
 unsigned version;

 if (vlen != 1)
  goto unsupported;

 ctx->msg->version = version = *(const u8 *)value;
 switch (version) {
 case 1:



  break;
 case 3:

  break;
 default:
  goto unsupported;
 }

 return 0;

unsupported:
 pr_warn("Unsupported SignedData version\n");
 return -EINVAL;
}
