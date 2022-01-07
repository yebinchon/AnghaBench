
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct x509_parse_context {scalar_t__ last_oid; scalar_t__ algo_oid; TYPE_2__* cert; } ;
struct TYPE_4__ {size_t raw_sig_size; void const* raw_sig; TYPE_1__* sig; } ;
struct TYPE_3__ {int pkey_algo; } ;


 int EBADMSG ;
 int EINVAL ;
 int pr_debug (char*,scalar_t__,size_t) ;
 int pr_warn (char*,scalar_t__,scalar_t__) ;
 scalar_t__ strcmp (int ,char*) ;

int x509_note_signature(void *context, size_t hdrlen,
   unsigned char tag,
   const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;

 pr_debug("Signature type: %u size %zu\n", ctx->last_oid, vlen);

 if (ctx->last_oid != ctx->algo_oid) {
  pr_warn("Got cert with pkey (%u) and sig (%u) algorithm OIDs\n",
   ctx->algo_oid, ctx->last_oid);
  return -EINVAL;
 }

 if (strcmp(ctx->cert->sig->pkey_algo, "rsa") == 0 ||
     strcmp(ctx->cert->sig->pkey_algo, "ecrdsa") == 0) {

  if (vlen < 1 || *(const u8 *)value != 0)
   return -EBADMSG;

  value++;
  vlen--;
 }

 ctx->cert->raw_sig = value;
 ctx->cert->raw_sig_size = vlen;
 return 0;
}
