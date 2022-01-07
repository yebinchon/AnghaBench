
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * qword; } ;
struct streebog_state {TYPE_1__ hash; scalar_t__ fillsize; } ;
struct shash_desc {int tfm; } ;


 scalar_t__ STREEBOG256_DIGEST_SIZE ;
 scalar_t__ STREEBOG512_DIGEST_SIZE ;
 scalar_t__ crypto_shash_digestsize (int ) ;
 int memcpy (int *,int *,scalar_t__) ;
 struct streebog_state* shash_desc_ctx (struct shash_desc*) ;
 int streebog_stage3 (struct streebog_state*) ;

__attribute__((used)) static int streebog_final(struct shash_desc *desc, u8 *digest)
{
 struct streebog_state *ctx = shash_desc_ctx(desc);

 streebog_stage3(ctx);
 ctx->fillsize = 0;
 if (crypto_shash_digestsize(desc->tfm) == STREEBOG256_DIGEST_SIZE)
  memcpy(digest, &ctx->hash.qword[4], STREEBOG256_DIGEST_SIZE);
 else
  memcpy(digest, &ctx->hash.qword[0], STREEBOG512_DIGEST_SIZE);
 return 0;
}
