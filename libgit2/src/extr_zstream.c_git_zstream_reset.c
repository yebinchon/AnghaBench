
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int zerr; scalar_t__ in_len; int * in; int z; } ;
typedef TYPE_1__ git_zstream ;


 scalar_t__ GIT_ZSTREAM_INFLATE ;
 int Z_STREAM_END ;
 int deflateReset (int *) ;
 int inflateReset (int *) ;

void git_zstream_reset(git_zstream *zstream)
{
 if (zstream->type == GIT_ZSTREAM_INFLATE)
  inflateReset(&zstream->z);
 else
  deflateReset(&zstream->z);
 zstream->in = ((void*)0);
 zstream->in_len = 0;
 zstream->zerr = Z_STREAM_END;
}
