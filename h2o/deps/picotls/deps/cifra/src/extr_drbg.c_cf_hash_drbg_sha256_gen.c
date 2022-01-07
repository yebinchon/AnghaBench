
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_hash_drbg_sha256 ;


 int cf_hash_drbg_sha256_gen_additional (int *,int *,int ,void*,size_t) ;

void cf_hash_drbg_sha256_gen(cf_hash_drbg_sha256 *ctx,
                             void *out, size_t nout)
{
  cf_hash_drbg_sha256_gen_additional(ctx,
                                     ((void*)0), 0,
                                     out, nout);
}
