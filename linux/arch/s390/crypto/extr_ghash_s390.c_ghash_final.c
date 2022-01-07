
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct ghash_desc_ctx {int icv; } ;


 int GHASH_BLOCK_SIZE ;
 int ghash_flush (struct ghash_desc_ctx*) ;
 int memcpy (int *,int ,int ) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_final(struct shash_desc *desc, u8 *dst)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);
 int ret;

 ret = ghash_flush(dctx);
 if (!ret)
  memcpy(dst, dctx->icv, GHASH_BLOCK_SIZE);
 return ret;
}
