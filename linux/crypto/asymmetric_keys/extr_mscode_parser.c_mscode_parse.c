
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pefile_context {int dummy; } ;


 int asn1_ber_decoder (int *,struct pefile_context*,void const*,size_t) ;
 int mscode_decoder ;
 int pr_devel (char*,size_t,unsigned int,void const*) ;

int mscode_parse(void *_ctx, const void *content_data, size_t data_len,
   size_t asn1hdrlen)
{
 struct pefile_context *ctx = _ctx;

 content_data -= asn1hdrlen;
 data_len += asn1hdrlen;
 pr_devel("Data: %zu [%*ph]\n", data_len, (unsigned)(data_len),
   content_data);

 return asn1_ber_decoder(&mscode_decoder, ctx, content_data, data_len);
}
