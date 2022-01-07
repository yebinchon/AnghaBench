
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs7_parse_context {scalar_t__ last_oid; TYPE_1__* msg; } ;
struct TYPE_2__ {scalar_t__ data_type; } ;


 int EINVAL ;
 scalar_t__ OID_data ;
 scalar_t__ OID_msIndirectData ;
 int pr_warn (char*,scalar_t__) ;

int pkcs7_note_content(void *context, size_t hdrlen,
         unsigned char tag,
         const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;

 if (ctx->last_oid != OID_data &&
     ctx->last_oid != OID_msIndirectData) {
  pr_warn("Unsupported data type %d\n", ctx->last_oid);
  return -EINVAL;
 }

 ctx->msg->data_type = ctx->last_oid;
 return 0;
}
