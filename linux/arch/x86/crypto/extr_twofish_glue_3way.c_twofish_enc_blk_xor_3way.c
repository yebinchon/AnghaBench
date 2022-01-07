
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twofish_ctx {int dummy; } ;


 int __twofish_enc_blk_3way (struct twofish_ctx*,int *,int const*,int) ;

__attribute__((used)) static inline void twofish_enc_blk_xor_3way(struct twofish_ctx *ctx, u8 *dst,
         const u8 *src)
{
 __twofish_enc_blk_3way(ctx, dst, src, 1);
}
