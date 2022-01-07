
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int workspace; } ;
struct deflate_ctx {TYPE_1__ comp_stream; } ;


 int vfree (int ) ;
 int zlib_deflateEnd (TYPE_1__*) ;

__attribute__((used)) static void deflate_comp_exit(struct deflate_ctx *ctx)
{
 zlib_deflateEnd(&ctx->comp_stream);
 vfree(ctx->comp_stream.workspace);
}
