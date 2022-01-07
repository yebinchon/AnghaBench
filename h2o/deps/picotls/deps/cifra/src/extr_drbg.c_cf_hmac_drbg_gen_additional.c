
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_hmac_drbg ;


 int MAX_DRBG_GENERATE ;
 size_t MIN (int ,size_t) ;
 int hmac_drbg_generate (int *,void const*,size_t,int *,size_t) ;

void cf_hmac_drbg_gen_additional(cf_hmac_drbg *ctx,
                                 const void *addnl, size_t naddnl,
                                 void *out, size_t nout)
{
  uint8_t *bout = out;

  while (nout != 0)
  {
    size_t take = MIN(MAX_DRBG_GENERATE, nout);
    hmac_drbg_generate(ctx, addnl, naddnl, bout, take);
    bout += take;
    nout -= take;


    addnl = ((void*)0);
    naddnl = 0;
  }
}
