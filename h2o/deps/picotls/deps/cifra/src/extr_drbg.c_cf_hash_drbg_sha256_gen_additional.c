
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_hash_drbg_sha256 ;


 int MAX_DRBG_GENERATE ;
 size_t MIN (int ,size_t) ;
 int hash_gen_request (int *,void const*,size_t,int *,size_t) ;

void cf_hash_drbg_sha256_gen_additional(cf_hash_drbg_sha256 *ctx,
                                        const void *addnl, size_t naddnl,
                                        void *out, size_t nout)
{
  uint8_t *bout = out;


  while (nout != 0)
  {
    size_t take = MIN(MAX_DRBG_GENERATE, nout);
    hash_gen_request(ctx, addnl, naddnl, bout, take);
    bout += take;
    nout -= take;


    addnl = ((void*)0);
    naddnl = 0;
  }
}
