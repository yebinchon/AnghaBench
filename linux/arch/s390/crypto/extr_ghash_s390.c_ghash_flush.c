
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_desc_ctx {int bytes; int * buffer; } ;


 int CPACF_KIMD_GHASH ;
 int GHASH_BLOCK_SIZE ;
 int cpacf_kimd (int ,struct ghash_desc_ctx*,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int ghash_flush(struct ghash_desc_ctx *dctx)
{
 u8 *buf = dctx->buffer;

 if (dctx->bytes) {
  u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

  memset(pos, 0, dctx->bytes);
  cpacf_kimd(CPACF_KIMD_GHASH, dctx, buf, GHASH_BLOCK_SIZE);
  dctx->bytes = 0;
 }

 return 0;
}
