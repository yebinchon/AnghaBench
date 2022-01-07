
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int workspace; } ;
struct deflate_ctx {TYPE_1__ decomp_stream; } ;


 int vfree (int ) ;
 int zlib_inflateEnd (TYPE_1__*) ;

__attribute__((used)) static void deflate_decomp_exit(struct deflate_ctx *ctx)
{
 zlib_inflateEnd(&ctx->decomp_stream);
 vfree(ctx->decomp_stream.workspace);
}
