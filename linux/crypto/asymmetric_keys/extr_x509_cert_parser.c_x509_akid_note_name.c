
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_parse_context {size_t akid_raw_issuer_size; void const* akid_raw_issuer; } ;


 int pr_debug (char*,int,void const*) ;

int x509_akid_note_name(void *context, size_t hdrlen,
   unsigned char tag,
   const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;

 pr_debug("AKID: name: %*phN\n", (int)vlen, value);

 ctx->akid_raw_issuer = value;
 ctx->akid_raw_issuer_size = vlen;
 return 0;
}
