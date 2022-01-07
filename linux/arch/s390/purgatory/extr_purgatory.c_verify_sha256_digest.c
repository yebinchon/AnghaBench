
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct sha256_state {int dummy; } ;
struct kexec_sha_region {int len; scalar_t__ start; } ;
typedef int digest ;


 int ARRAY_SIZE (struct kexec_sha_region*) ;
 int SHA256_DIGEST_SIZE ;
 scalar_t__ memcmp (int *,int ,int) ;
 int purgatory_sha256_digest ;
 struct kexec_sha_region* purgatory_sha_regions ;
 int sha256_final (struct sha256_state*,int *) ;
 int sha256_init (struct sha256_state*) ;
 int sha256_update (struct sha256_state*,int *,int ) ;

int verify_sha256_digest(void)
{
 struct kexec_sha_region *ptr, *end;
 u8 digest[SHA256_DIGEST_SIZE];
 struct sha256_state sctx;

 sha256_init(&sctx);
 end = purgatory_sha_regions + ARRAY_SIZE(purgatory_sha_regions);

 for (ptr = purgatory_sha_regions; ptr < end; ptr++)
  sha256_update(&sctx, (uint8_t *)(ptr->start), ptr->len);

 sha256_final(&sctx, digest);

 if (memcmp(digest, purgatory_sha256_digest, sizeof(digest)))
  return 1;

 return 0;
}
