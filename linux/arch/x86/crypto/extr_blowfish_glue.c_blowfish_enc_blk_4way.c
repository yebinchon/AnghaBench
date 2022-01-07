
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bf_ctx {int dummy; } ;


 int __blowfish_enc_blk_4way (struct bf_ctx*,int *,int const*,int) ;

__attribute__((used)) static inline void blowfish_enc_blk_4way(struct bf_ctx *ctx, u8 *dst,
      const u8 *src)
{
 __blowfish_enc_blk_4way(ctx, dst, src, 0);
}
