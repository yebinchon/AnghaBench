
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {int workspace; } ;
struct deflate_ctx {struct z_stream_s decomp_stream; } ;


 int DEFLATE_DEF_WINBITS ;
 int EINVAL ;
 int ENOMEM ;
 int Z_OK ;
 int vfree (int ) ;
 int vzalloc (int ) ;
 int zlib_inflateInit (struct z_stream_s*) ;
 int zlib_inflateInit2 (struct z_stream_s*,int ) ;
 int zlib_inflate_workspacesize () ;

__attribute__((used)) static int deflate_decomp_init(struct deflate_ctx *ctx, int format)
{
 int ret = 0;
 struct z_stream_s *stream = &ctx->decomp_stream;

 stream->workspace = vzalloc(zlib_inflate_workspacesize());
 if (!stream->workspace) {
  ret = -ENOMEM;
  goto out;
 }
 if (format)
  ret = zlib_inflateInit(stream);
 else
  ret = zlib_inflateInit2(stream, -DEFLATE_DEF_WINBITS);
 if (ret != Z_OK) {
  ret = -EINVAL;
  goto out_free;
 }
out:
 return ret;
out_free:
 vfree(stream->workspace);
 goto out;
}
