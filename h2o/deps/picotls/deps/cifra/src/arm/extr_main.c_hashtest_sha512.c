
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_sha512_context ;


 int CF_SHA512_HASHSZ ;
 int cf_sha512_digest_final (int *,int *) ;
 int cf_sha512_init (int *) ;
 int cf_sha512_update (int *,char*,int ) ;

__attribute__((used)) static void hashtest_sha512(void)
{
  uint8_t hash[CF_SHA512_HASHSZ];
  cf_sha512_context ctx;
  cf_sha512_init(&ctx);
  cf_sha512_update(&ctx, "", 0);
  cf_sha512_digest_final(&ctx, hash);
}
