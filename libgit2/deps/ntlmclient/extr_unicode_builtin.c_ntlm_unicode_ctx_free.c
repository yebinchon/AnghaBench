
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntlm_unicode_ctx ;


 int free (int *) ;

void ntlm_unicode_ctx_free(ntlm_unicode_ctx *ctx)
{
 if (ctx)
  free(ctx);
}
