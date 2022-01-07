
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgr192_ctx {int a; int b; int c; scalar_t__ count; scalar_t__ nblocks; } ;
struct shash_desc {int dummy; } ;


 struct tgr192_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int tgr192_init(struct shash_desc *desc)
{
 struct tgr192_ctx *tctx = shash_desc_ctx(desc);

 tctx->a = 0x0123456789abcdefULL;
 tctx->b = 0xfedcba9876543210ULL;
 tctx->c = 0xf096a5b4c3b2e187ULL;
 tctx->nblocks = 0;
 tctx->count = 0;

 return 0;
}
