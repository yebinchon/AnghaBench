
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct spu_context {TYPE_2__* spu; } ;
struct TYPE_4__ {TYPE_1__* priv2; } ;
struct TYPE_3__ {int spu_privcntl_RW; } ;


 int out_be64 (int *,int ) ;

__attribute__((used)) static void spu_hw_privcntl_write(struct spu_context *ctx, u64 val)
{
 out_be64(&ctx->spu->priv2->spu_privcntl_RW, val);
}
