
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs7_signed_info {size_t msgdigest_len; int aa_set; void const* msgdigest; int signing_time; int index; } ;
struct pkcs7_parse_context {int last_oid; TYPE_1__* msg; struct pkcs7_signed_info* sinfo; } ;
typedef enum OID { ____Placeholder_OID } OID ;
struct TYPE_2__ {int data_type; } ;


 unsigned char ASN1_OTS ;
 int EBADMSG ;
 int EKEYREJECTED ;


 int OID_msIndirectData ;




 int __test_and_set_bit (int ,int *) ;
 int look_up_OID (void const*,size_t) ;
 int pr_devel (char*,unsigned char,size_t,unsigned int,void const*) ;
 int pr_warn (char*,...) ;
 int sinfo_has_content_type ;
 int sinfo_has_message_digest ;
 int sinfo_has_ms_opus_info ;
 int sinfo_has_ms_statement_type ;
 int sinfo_has_signing_time ;
 int sinfo_has_smime_caps ;
 int x509_decode_time (int *,size_t,unsigned char,void const*,size_t) ;

int pkcs7_sig_note_authenticated_attr(void *context, size_t hdrlen,
          unsigned char tag,
          const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;
 struct pkcs7_signed_info *sinfo = ctx->sinfo;
 enum OID content_type;

 pr_devel("AuthAttr: %02x %zu [%*ph]\n", tag, vlen, (unsigned)vlen, value);

 switch (ctx->last_oid) {
 case 133:
  if (__test_and_set_bit(sinfo_has_content_type, &sinfo->aa_set))
   goto repeated;
  content_type = look_up_OID(value, vlen);
  if (content_type != ctx->msg->data_type) {
   pr_warn("Mismatch between global data type (%d) and sinfo %u (%d)\n",
    ctx->msg->data_type, sinfo->index,
    content_type);
   return -EBADMSG;
  }
  return 0;

 case 129:
  if (__test_and_set_bit(sinfo_has_signing_time, &sinfo->aa_set))
   goto repeated;



  return x509_decode_time(&sinfo->signing_time,
     hdrlen, tag, value, vlen);

 case 132:
  if (__test_and_set_bit(sinfo_has_message_digest, &sinfo->aa_set))
   goto repeated;
  if (tag != ASN1_OTS)
   return -EBADMSG;
  sinfo->msgdigest = value;
  sinfo->msgdigest_len = vlen;
  return 0;

 case 128:
  if (__test_and_set_bit(sinfo_has_smime_caps, &sinfo->aa_set))
   goto repeated;
  if (ctx->msg->data_type != OID_msIndirectData) {
   pr_warn("S/MIME Caps only allowed with Authenticode\n");
   return -EKEYREJECTED;
  }
  return 0;







 case 131:
  if (__test_and_set_bit(sinfo_has_ms_opus_info, &sinfo->aa_set))
   goto repeated;
  goto authenticode_check;
 case 130:
  if (__test_and_set_bit(sinfo_has_ms_statement_type, &sinfo->aa_set))
   goto repeated;
 authenticode_check:
  if (ctx->msg->data_type != OID_msIndirectData) {
   pr_warn("Authenticode AuthAttrs only allowed with Authenticode\n");
   return -EKEYREJECTED;
  }

  return 0;
 default:
  return 0;
 }

repeated:

 pr_warn("Repeated/multivalue AuthAttrs not permitted\n");
 return -EKEYREJECTED;
}
