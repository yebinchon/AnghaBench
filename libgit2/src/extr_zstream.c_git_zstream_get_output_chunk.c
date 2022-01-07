
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uInt ;
struct TYPE_7__ {size_t avail_in; size_t avail_out; void* next_out; int * next_in; } ;
struct TYPE_6__ {scalar_t__ in_len; scalar_t__ type; TYPE_3__ z; scalar_t__ in; int flush; int zerr; } ;
typedef TYPE_1__ git_zstream ;
typedef int Bytef ;


 scalar_t__ GIT_ZSTREAM_INFLATE ;
 scalar_t__ UINT_MAX ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int deflate (TYPE_3__*,int ) ;
 int inflate (TYPE_3__*,int ) ;
 scalar_t__ zstream_seterr (TYPE_1__*) ;

int git_zstream_get_output_chunk(
 void *out, size_t *out_len, git_zstream *zstream)
{
 size_t in_queued, in_used, out_queued;


 zstream->z.next_in = (Bytef *)zstream->in;


 if (zstream->in_len > UINT_MAX) {
  zstream->z.avail_in = UINT_MAX;
  zstream->flush = Z_NO_FLUSH;
 } else {
  zstream->z.avail_in = (uInt)zstream->in_len;
  zstream->flush = Z_FINISH;
 }
 in_queued = (size_t)zstream->z.avail_in;


 zstream->z.next_out = out;
 zstream->z.avail_out = (uInt)*out_len;

 if ((size_t)zstream->z.avail_out != *out_len)
  zstream->z.avail_out = UINT_MAX;
 out_queued = (size_t)zstream->z.avail_out;


 if (zstream->type == GIT_ZSTREAM_INFLATE)
  zstream->zerr = inflate(&zstream->z, zstream->flush);
 else
  zstream->zerr = deflate(&zstream->z, zstream->flush);

 if (zstream_seterr(zstream))
  return -1;

 in_used = (in_queued - zstream->z.avail_in);
 zstream->in_len -= in_used;
 zstream->in += in_used;

 *out_len = (out_queued - zstream->z.avail_out);

 return 0;
}
