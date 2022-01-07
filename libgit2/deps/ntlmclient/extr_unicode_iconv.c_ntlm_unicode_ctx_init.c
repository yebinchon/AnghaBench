
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* utf16_to_8; void* utf8_to_16; int * ntlm; } ;
typedef TYPE_1__ ntlm_unicode_ctx ;
typedef int ntlm_client ;
typedef void* iconv_t ;


 TYPE_1__* calloc (int,int) ;

ntlm_unicode_ctx *ntlm_unicode_ctx_init(ntlm_client *ntlm)
{
 ntlm_unicode_ctx *ctx;

 if ((ctx = calloc(1, sizeof(ntlm_unicode_ctx))) == ((void*)0))
  return ((void*)0);

 ctx->ntlm = ntlm;
 ctx->utf8_to_16 = (iconv_t)-1;
 ctx->utf16_to_8 = (iconv_t)-1;

 return ctx;
}
