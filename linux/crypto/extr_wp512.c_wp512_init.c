
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wp512_ctx {long* hash; scalar_t__* buffer; scalar_t__ bufferPos; scalar_t__ bufferBits; int bitLength; } ;
struct shash_desc {int dummy; } ;


 int memset (int ,int ,int) ;
 struct wp512_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int wp512_init(struct shash_desc *desc) {
 struct wp512_ctx *wctx = shash_desc_ctx(desc);
 int i;

 memset(wctx->bitLength, 0, 32);
 wctx->bufferBits = wctx->bufferPos = 0;
 wctx->buffer[0] = 0;
 for (i = 0; i < 8; i++) {
  wctx->hash[i] = 0L;
 }

 return 0;
}
