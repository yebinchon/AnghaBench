
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {TYPE_1__* ops; } ;
struct TYPE_2__ {size_t (* wbox_write ) (struct spu_context*,int ) ;} ;


 size_t stub1 (struct spu_context*,int ) ;

size_t spu_wbox_write(struct spu_context *ctx, u32 data)
{
 return ctx->ops->wbox_write(ctx, data);
}
