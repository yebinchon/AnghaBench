
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntlm_hmac_ctx ;


 int HMAC_CTX_free (int *) ;

void ntlm_hmac_ctx_free(ntlm_hmac_ctx *ctx)
{
 HMAC_CTX_free(ctx);
}
