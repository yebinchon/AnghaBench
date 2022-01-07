
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * expkey; } ;
struct des3_ede_x86_ctx {TYPE_1__ dec; } ;


 int des3_ede_x86_64_crypt_blk_3way (int *,int *,int const*) ;

__attribute__((used)) static inline void des3_ede_dec_blk_3way(struct des3_ede_x86_ctx *ctx, u8 *dst,
      const u8 *src)
{
 u32 *dec_ctx = ctx->dec.expkey;

 des3_ede_x86_64_crypt_blk_3way(dec_ctx, dst, src);
}
