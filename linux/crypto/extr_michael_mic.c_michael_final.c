
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct michael_mic_desc_ctx {int* pending; int pending_len; int l; int r; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int michael_block (int,int) ;
 struct michael_mic_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int michael_final(struct shash_desc *desc, u8 *out)
{
 struct michael_mic_desc_ctx *mctx = shash_desc_ctx(desc);
 u8 *data = mctx->pending;
 __le32 *dst = (__le32 *)out;


 switch (mctx->pending_len) {
 case 0:
  mctx->l ^= 0x5a;
  break;
 case 1:
  mctx->l ^= data[0] | 0x5a00;
  break;
 case 2:
  mctx->l ^= data[0] | (data[1] << 8) | 0x5a0000;
  break;
 case 3:
  mctx->l ^= data[0] | (data[1] << 8) | (data[2] << 16) |
   0x5a000000;
  break;
 }
 michael_block(mctx->l, mctx->r);

 michael_block(mctx->l, mctx->r);

 dst[0] = cpu_to_le32(mctx->l);
 dst[1] = cpu_to_le32(mctx->r);

 return 0;
}
