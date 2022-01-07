
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ git_zstream_t ;
struct TYPE_4__ {scalar_t__ type; int z; int zerr; } ;
typedef TYPE_1__ git_zstream ;


 scalar_t__ GIT_ZSTREAM_INFLATE ;
 int Z_DEFAULT_COMPRESSION ;
 int deflateInit (int *,int ) ;
 int inflateInit (int *) ;
 int zstream_seterr (TYPE_1__*) ;

int git_zstream_init(git_zstream *zstream, git_zstream_t type)
{
 zstream->type = type;

 if (zstream->type == GIT_ZSTREAM_INFLATE)
  zstream->zerr = inflateInit(&zstream->z);
 else
  zstream->zerr = deflateInit(&zstream->z, Z_DEFAULT_COMPRESSION);
 return zstream_seterr(zstream);
}
