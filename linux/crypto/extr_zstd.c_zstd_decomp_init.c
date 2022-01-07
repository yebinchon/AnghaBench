
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zstd_ctx {int dwksp; int dctx; } ;


 int EINVAL ;
 int ENOMEM ;
 size_t ZSTD_DCtxWorkspaceBound () ;
 int ZSTD_initDCtx (int ,size_t const) ;
 int vfree (int ) ;
 int vzalloc (size_t const) ;

__attribute__((used)) static int zstd_decomp_init(struct zstd_ctx *ctx)
{
 int ret = 0;
 const size_t wksp_size = ZSTD_DCtxWorkspaceBound();

 ctx->dwksp = vzalloc(wksp_size);
 if (!ctx->dwksp) {
  ret = -ENOMEM;
  goto out;
 }

 ctx->dctx = ZSTD_initDCtx(ctx->dwksp, wksp_size);
 if (!ctx->dctx) {
  ret = -EINVAL;
  goto out_free;
 }
out:
 return ret;
out_free:
 vfree(ctx->dwksp);
 goto out;
}
