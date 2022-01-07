
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct public_key_signature {int dummy; } ;
struct pkcs7_signed_info {TYPE_2__* sig; struct pkcs7_signed_info* next; scalar_t__ index; int authattrs; } ;
struct pkcs7_parse_context {char* raw_issuer; struct pkcs7_signed_info* sinfo; struct pkcs7_signed_info** ppsinfo; scalar_t__ sinfo_index; int raw_skid_size; int raw_skid; int raw_issuer_size; int raw_serial_size; int raw_serial; int expect_skid; TYPE_1__* msg; } ;
struct asymmetric_key_id {int data; int len; } ;
struct TYPE_4__ {struct asymmetric_key_id** auth_ids; } ;
struct TYPE_3__ {scalar_t__ data_type; } ;


 int EBADMSG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct asymmetric_key_id*) ;
 scalar_t__ OID_msIndirectData ;
 int PTR_ERR (struct asymmetric_key_id*) ;
 struct asymmetric_key_id* asymmetric_key_generate_id (int ,int ,char*,int ) ;
 void* kzalloc (int,int ) ;
 int pr_devel (char*,int ,int ,int ) ;
 int pr_warn (char*) ;

int pkcs7_note_signed_info(void *context, size_t hdrlen,
      unsigned char tag,
      const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;
 struct pkcs7_signed_info *sinfo = ctx->sinfo;
 struct asymmetric_key_id *kid;

 if (ctx->msg->data_type == OID_msIndirectData && !sinfo->authattrs) {
  pr_warn("Authenticode requires AuthAttrs\n");
  return -EBADMSG;
 }


 if (!ctx->expect_skid) {
  kid = asymmetric_key_generate_id(ctx->raw_serial,
       ctx->raw_serial_size,
       ctx->raw_issuer,
       ctx->raw_issuer_size);
 } else {
  kid = asymmetric_key_generate_id(ctx->raw_skid,
       ctx->raw_skid_size,
       "", 0);
 }
 if (IS_ERR(kid))
  return PTR_ERR(kid);

 pr_devel("SINFO KID: %u [%*phN]\n", kid->len, kid->len, kid->data);

 sinfo->sig->auth_ids[0] = kid;
 sinfo->index = ++ctx->sinfo_index;
 *ctx->ppsinfo = sinfo;
 ctx->ppsinfo = &sinfo->next;
 ctx->sinfo = kzalloc(sizeof(struct pkcs7_signed_info), GFP_KERNEL);
 if (!ctx->sinfo)
  return -ENOMEM;
 ctx->sinfo->sig = kzalloc(sizeof(struct public_key_signature),
      GFP_KERNEL);
 if (!ctx->sinfo->sig)
  return -ENOMEM;
 return 0;
}
