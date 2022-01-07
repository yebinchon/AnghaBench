
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_sha3_context ;


 int CF_SHA3_224_HASHSZ ;
 int pad_and_squeeze (int *,int *,int ) ;

void cf_sha3_224_digest_final(cf_sha3_context *ctx, uint8_t hash[CF_SHA3_224_HASHSZ])
{
  pad_and_squeeze(ctx, hash, CF_SHA3_224_HASHSZ);
}
