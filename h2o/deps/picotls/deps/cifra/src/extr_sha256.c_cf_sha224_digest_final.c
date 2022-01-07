
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_sha256_context ;


 int CF_SHA224_HASHSZ ;
 int CF_SHA256_HASHSZ ;
 int cf_sha256_digest_final (int *,int *) ;
 int memcpy (int *,int *,int ) ;

void cf_sha224_digest_final(cf_sha256_context *ctx, uint8_t hash[CF_SHA224_HASHSZ])
{
  uint8_t full[CF_SHA256_HASHSZ];
  cf_sha256_digest_final(ctx, full);
  memcpy(hash, full, CF_SHA224_HASHSZ);
}
