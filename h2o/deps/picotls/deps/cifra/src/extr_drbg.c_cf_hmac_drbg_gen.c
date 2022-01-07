
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_hmac_drbg ;


 int cf_hmac_drbg_gen_additional (int *,int *,int ,void*,size_t) ;

void cf_hmac_drbg_gen(cf_hmac_drbg *ctx, void *out, size_t nout)
{
  cf_hmac_drbg_gen_additional(ctx,
                              ((void*)0), 0,
                              out, nout);
}
