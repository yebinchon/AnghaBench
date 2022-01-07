
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pefile_context {char* digest_algo; } ;
typedef enum OID { ____Placeholder_OID } OID ;
typedef int buffer ;


 int EBADMSG ;
 int ENOPKG ;
 int look_up_OID (void const*,size_t) ;
 int pr_err (char*,...) ;
 int sprint_oid (void const*,size_t,char*,int) ;

int mscode_note_digest_algo(void *context, size_t hdrlen,
       unsigned char tag,
       const void *value, size_t vlen)
{
 struct pefile_context *ctx = context;
 char buffer[50];
 enum OID oid;

 oid = look_up_OID(value, vlen);
 switch (oid) {
 case 134:
  ctx->digest_algo = "md4";
  break;
 case 133:
  ctx->digest_algo = "md5";
  break;
 case 132:
  ctx->digest_algo = "sha1";
  break;
 case 130:
  ctx->digest_algo = "sha256";
  break;
 case 129:
  ctx->digest_algo = "sha384";
  break;
 case 128:
  ctx->digest_algo = "sha512";
  break;
 case 131:
  ctx->digest_algo = "sha224";
  break;

 case 135:
  sprint_oid(value, vlen, buffer, sizeof(buffer));
  pr_err("Unknown OID: %s\n", buffer);
  return -EBADMSG;

 default:
  pr_err("Unsupported content type: %u\n", oid);
  return -ENOPKG;
 }

 return 0;
}
