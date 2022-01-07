
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {int tagwait; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_mfc_tagstatus ) (struct spu_context*) ;int (* set_mfc_query ) (struct spu_context*,int,int) ;} ;


 int stub1 (struct spu_context*) ;
 int stub2 (struct spu_context*,int,int) ;

__attribute__((used)) static int spufs_read_mfc_tagstatus(struct spu_context *ctx, u32 *status)
{


 *status = ctx->ops->read_mfc_tagstatus(ctx) & ctx->tagwait;
 ctx->tagwait &= ~*status;
 if (*status)
  return 1;



 ctx->ops->set_mfc_query(ctx, ctx->tagwait, 1);
 return 0;
}
