
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct mac_desc_ctx {scalar_t__ len; int dg; } ;


 int AES_BLOCK_SIZE ;
 int memset (int ,int ,int ) ;
 struct mac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int mac_init(struct shash_desc *desc)
{
 struct mac_desc_ctx *ctx = shash_desc_ctx(desc);

 memset(ctx->dg, 0, AES_BLOCK_SIZE);
 ctx->len = 0;

 return 0;
}
