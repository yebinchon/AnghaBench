
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x509_parse_context {TYPE_2__* cert; int akid_raw_issuer_size; int akid_raw_issuer; } ;
struct asymmetric_key_id {int len; void const* data; } ;
struct TYPE_4__ {TYPE_1__* sig; } ;
struct TYPE_3__ {struct asymmetric_key_id** auth_ids; } ;


 scalar_t__ IS_ERR (struct asymmetric_key_id*) ;
 int PTR_ERR (struct asymmetric_key_id*) ;
 struct asymmetric_key_id* asymmetric_key_generate_id (void const*,size_t,int ,int ) ;
 int pr_debug (char*,int,void const*) ;

int x509_akid_note_serial(void *context, size_t hdrlen,
     unsigned char tag,
     const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;
 struct asymmetric_key_id *kid;

 pr_debug("AKID: serial: %*phN\n", (int)vlen, value);

 if (!ctx->akid_raw_issuer || ctx->cert->sig->auth_ids[0])
  return 0;

 kid = asymmetric_key_generate_id(value,
      vlen,
      ctx->akid_raw_issuer,
      ctx->akid_raw_issuer_size);
 if (IS_ERR(kid))
  return PTR_ERR(kid);

 pr_debug("authkeyid %*phN\n", kid->len, kid->data);
 ctx->cert->sig->auth_ids[0] = kid;
 return 0;
}
