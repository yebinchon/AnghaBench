
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ntlm; } ;
typedef TYPE_1__ ntlm_unicode_ctx ;
typedef int ntlm_client ;


 TYPE_1__* malloc (int) ;

ntlm_unicode_ctx *ntlm_unicode_ctx_init(ntlm_client *ntlm)
{
 ntlm_unicode_ctx *ctx;

 if ((ctx = malloc(sizeof(ntlm_unicode_ctx))) == ((void*)0))
  return ((void*)0);

 ctx->ntlm = ntlm;
 return ctx;
}
