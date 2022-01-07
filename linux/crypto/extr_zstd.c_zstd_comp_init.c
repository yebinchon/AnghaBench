
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zstd_ctx {int cwksp; int cctx; } ;
struct TYPE_3__ {int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;


 int EINVAL ;
 int ENOMEM ;
 size_t ZSTD_CCtxWorkspaceBound (int ) ;
 int ZSTD_initCCtx (int ,size_t const) ;
 int vfree (int ) ;
 int vzalloc (size_t const) ;
 TYPE_1__ zstd_params () ;

__attribute__((used)) static int zstd_comp_init(struct zstd_ctx *ctx)
{
 int ret = 0;
 const ZSTD_parameters params = zstd_params();
 const size_t wksp_size = ZSTD_CCtxWorkspaceBound(params.cParams);

 ctx->cwksp = vzalloc(wksp_size);
 if (!ctx->cwksp) {
  ret = -ENOMEM;
  goto out;
 }

 ctx->cctx = ZSTD_initCCtx(ctx->cwksp, wksp_size);
 if (!ctx->cctx) {
  ret = -EINVAL;
  goto out_free;
 }
out:
 return ret;
out_free:
 vfree(ctx->cwksp);
 goto out;
}
