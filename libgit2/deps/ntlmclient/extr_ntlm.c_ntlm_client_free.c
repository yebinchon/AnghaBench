
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int unicode_ctx; int hmac_ctx; } ;
typedef TYPE_1__ ntlm_client ;


 int free (TYPE_1__*) ;
 int ntlm_client_reset (TYPE_1__*) ;
 int ntlm_hmac_ctx_free (int ) ;
 int ntlm_unicode_ctx_free (int ) ;

void ntlm_client_free(ntlm_client *ntlm)
{
 if (!ntlm)
  return;

 ntlm_client_reset(ntlm);

 ntlm_hmac_ctx_free(ntlm->hmac_ctx);
 ntlm_unicode_ctx_free(ntlm->unicode_ctx);

 free(ntlm);
}
