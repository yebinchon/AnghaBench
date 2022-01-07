
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zstd_ctx {int cctx; } ;
typedef int ZSTD_parameters ;


 int EINVAL ;
 size_t ZSTD_compressCCtx (int ,int *,unsigned int,int const*,unsigned int,int const) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int zstd_params () ;

__attribute__((used)) static int __zstd_compress(const u8 *src, unsigned int slen,
      u8 *dst, unsigned int *dlen, void *ctx)
{
 size_t out_len;
 struct zstd_ctx *zctx = ctx;
 const ZSTD_parameters params = zstd_params();

 out_len = ZSTD_compressCCtx(zctx->cctx, dst, *dlen, src, slen, params);
 if (ZSTD_isError(out_len))
  return -EINVAL;
 *dlen = out_len;
 return 0;
}
