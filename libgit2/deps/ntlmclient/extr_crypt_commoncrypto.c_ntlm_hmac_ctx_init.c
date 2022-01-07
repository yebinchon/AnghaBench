
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntlm_hmac_ctx ;


 int * calloc (int,int) ;

ntlm_hmac_ctx *ntlm_hmac_ctx_init(void)
{
 return calloc(1, sizeof(ntlm_hmac_ctx));
}
