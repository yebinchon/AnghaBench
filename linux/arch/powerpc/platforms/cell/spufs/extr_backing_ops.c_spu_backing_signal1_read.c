
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * spu_chnldata_RW; } ;
struct spu_context {TYPE_1__ csa; } ;



__attribute__((used)) static u32 spu_backing_signal1_read(struct spu_context *ctx)
{
 return ctx->csa.spu_chnldata_RW[3];
}
