
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int z; } ;
typedef TYPE_1__ git_zstream ;


 scalar_t__ GIT_ZSTREAM_INFLATE ;
 int deflateEnd (int *) ;
 int inflateEnd (int *) ;

void git_zstream_free(git_zstream *zstream)
{
 if (zstream->type == GIT_ZSTREAM_INFLATE)
  inflateEnd(&zstream->z);
 else
  deflateEnd(&zstream->z);
}
