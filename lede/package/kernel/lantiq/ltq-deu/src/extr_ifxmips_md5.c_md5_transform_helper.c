
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_ctx {int block; int hash; } ;


 int md5_transform (struct md5_ctx*,int ,int ) ;

__attribute__((used)) static inline void md5_transform_helper(struct md5_ctx *ctx)
{

    md5_transform(ctx, ctx->hash, ctx->block);
}
