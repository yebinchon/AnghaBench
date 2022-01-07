
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mbed; } ;
typedef TYPE_1__ ntlm_hmac_ctx ;


 int free (TYPE_1__*) ;
 int mbedtls_md_free (int *) ;

void ntlm_hmac_ctx_free(ntlm_hmac_ctx *ctx)
{
 if (ctx) {
  mbedtls_md_free(&ctx->mbed);
  free(ctx);
 }
}
