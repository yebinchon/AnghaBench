
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ in_len; scalar_t__ zerr; scalar_t__ flush; } ;
typedef TYPE_1__ git_zstream ;


 int GIT_ERROR_ZLIB ;
 scalar_t__ Z_FINISH ;
 scalar_t__ Z_STREAM_END ;
 int assert (int) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_zstream_get_output_chunk (void*,size_t*,TYPE_1__*) ;

int git_zstream_get_output(void *out, size_t *out_len, git_zstream *zstream)
{
 size_t out_remain = *out_len;

 if (zstream->in_len && zstream->zerr == Z_STREAM_END) {
  git_error_set(GIT_ERROR_ZLIB, "zlib input had trailing garbage");
  return -1;
 }

 while (out_remain > 0 && zstream->zerr != Z_STREAM_END) {
  size_t out_written = out_remain;

  if (git_zstream_get_output_chunk(out, &out_written, zstream) < 0)
   return -1;

  out_remain -= out_written;
  out = ((char *)out) + out_written;
 }


 assert(zstream->in_len > 0 || zstream->flush == Z_FINISH);


 *out_len = *out_len - out_remain;

 return 0;
}
