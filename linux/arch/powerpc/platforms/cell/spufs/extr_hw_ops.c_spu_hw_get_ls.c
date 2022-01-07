
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {TYPE_1__* spu; } ;
struct TYPE_2__ {char* local_store; } ;



__attribute__((used)) static char *spu_hw_get_ls(struct spu_context *ctx)
{
 return ctx->spu->local_store;
}
