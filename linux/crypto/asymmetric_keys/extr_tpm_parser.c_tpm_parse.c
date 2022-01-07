
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_parse_context {int blob_len; int blob; } ;
struct tpm_key {int dummy; } ;
typedef int ctx ;


 struct tpm_key* ERR_PTR (long) ;
 long asn1_ber_decoder (int *,struct tpm_parse_context*,void const*,size_t) ;
 int memset (struct tpm_parse_context*,int ,int) ;
 int tpm_decoder ;
 struct tpm_key* tpm_key_create (int ,int ) ;

__attribute__((used)) static struct tpm_key *tpm_parse(const void *data, size_t datalen)
{
 struct tpm_parse_context ctx;
 long ret;

 memset(&ctx, 0, sizeof(ctx));


 ret = asn1_ber_decoder(&tpm_decoder, &ctx, data, datalen);
 if (ret < 0)
  goto error;

 return tpm_key_create(ctx.blob, ctx.blob_len);

error:
 return ERR_PTR(ret);
}
