
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_sha256_context ;


 int CF_SHA256_HASHSZ ;
 int cf_sha256_digest_final (int *,int *) ;
 int cf_sha256_init (int *) ;
 int cf_sha256_update (int *,char*,int ) ;

__attribute__((used)) static void hashtest_sha256(void)
{
  uint8_t hash[CF_SHA256_HASHSZ];
  cf_sha256_context ctx;
  cf_sha256_init(&ctx);
  cf_sha256_update(&ctx, "", 0);
  cf_sha256_digest_final(&ctx, hash);
}
