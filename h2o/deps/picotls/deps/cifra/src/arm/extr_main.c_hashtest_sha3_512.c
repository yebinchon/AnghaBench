
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_sha3_context ;


 int CF_SHA3_512_HASHSZ ;
 int cf_sha3_512_digest_final (int *,int *) ;
 int cf_sha3_512_init (int *) ;
 int cf_sha3_512_update (int *,char*,int ) ;

__attribute__((used)) static void hashtest_sha3_512(void)
{
  uint8_t hash[CF_SHA3_512_HASHSZ];
  cf_sha3_context ctx;
  cf_sha3_512_init(&ctx);
  cf_sha3_512_update(&ctx, "", 0);
  cf_sha3_512_digest_final(&ctx, hash);
}
