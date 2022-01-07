
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int avail_in; int total_out; int avail_out; int next_out; scalar_t__ next_in; int * zfree; int * zalloc; } ;
typedef TYPE_1__ z_stream ;
struct TYPE_8__ {int errcode; int uncompressed_block; scalar_t__ compressed_block; } ;
typedef TYPE_2__ BGZF ;


 int BGZF_BLOCK_SIZE ;
 int BGZF_ERR_ZLIB ;
 int Z_FINISH ;
 scalar_t__ Z_OK ;
 scalar_t__ Z_STREAM_END ;
 scalar_t__ inflate (TYPE_1__*,int ) ;
 scalar_t__ inflateEnd (TYPE_1__*) ;
 scalar_t__ inflateInit2 (TYPE_1__*,int) ;

__attribute__((used)) static int inflate_block(BGZF* fp, int block_length)
{
 z_stream zs;
 zs.zalloc = ((void*)0);
 zs.zfree = ((void*)0);
 zs.next_in = fp->compressed_block + 18;
 zs.avail_in = block_length - 16;
 zs.next_out = fp->uncompressed_block;
 zs.avail_out = BGZF_BLOCK_SIZE;

 if (inflateInit2(&zs, -15) != Z_OK) {
  fp->errcode |= BGZF_ERR_ZLIB;
  return -1;
 }
 if (inflate(&zs, Z_FINISH) != Z_STREAM_END) {
  inflateEnd(&zs);
  fp->errcode |= BGZF_ERR_ZLIB;
  return -1;
 }
 if (inflateEnd(&zs) != Z_OK) {
  fp->errcode |= BGZF_ERR_ZLIB;
  return -1;
 }
 return zs.total_out;
}
