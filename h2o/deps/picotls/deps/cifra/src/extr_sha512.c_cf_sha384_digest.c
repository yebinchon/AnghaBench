
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_sha512_context ;


 int CF_SHA384_HASHSZ ;
 int CF_SHA512_HASHSZ ;
 int cf_sha512_digest (int const*,int *) ;
 int memcpy (int *,int *,int ) ;

void cf_sha384_digest(const cf_sha512_context *ctx, uint8_t hash[CF_SHA384_HASHSZ])
{
  uint8_t full[CF_SHA512_HASHSZ];
  cf_sha512_digest(ctx, full);
  memcpy(hash, full, CF_SHA384_HASHSZ);
}
