
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntlm_hmac_ctx ;


 int * HMAC_CTX_new () ;

ntlm_hmac_ctx *ntlm_hmac_ctx_init(void)
{
 return HMAC_CTX_new();
}
