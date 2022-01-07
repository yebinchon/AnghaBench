
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs7_signed_info {size_t authattrs_len; void const* authattrs; int aa_set; } ;
struct pkcs7_parse_context {TYPE_1__* msg; struct pkcs7_signed_info* sinfo; } ;
struct TYPE_2__ {scalar_t__ data_type; } ;


 int EBADMSG ;
 scalar_t__ OID_msIndirectData ;
 int pr_warn (char*) ;
 int sinfo_has_content_type ;
 int sinfo_has_message_digest ;
 int sinfo_has_ms_opus_info ;
 scalar_t__ test_bit (int ,int *) ;

int pkcs7_sig_note_set_of_authattrs(void *context, size_t hdrlen,
        unsigned char tag,
        const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;
 struct pkcs7_signed_info *sinfo = ctx->sinfo;

 if (!test_bit(sinfo_has_content_type, &sinfo->aa_set) ||
     !test_bit(sinfo_has_message_digest, &sinfo->aa_set)) {
  pr_warn("Missing required AuthAttr\n");
  return -EBADMSG;
 }

 if (ctx->msg->data_type != OID_msIndirectData &&
     test_bit(sinfo_has_ms_opus_info, &sinfo->aa_set)) {
  pr_warn("Unexpected Authenticode AuthAttr\n");
  return -EBADMSG;
 }


 sinfo->authattrs = value - (hdrlen - 1);
 sinfo->authattrs_len = vlen + (hdrlen - 1);
 return 0;
}
