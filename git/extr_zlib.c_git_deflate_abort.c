
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z; } ;
typedef TYPE_1__ git_zstream ;


 int deflateEnd (int *) ;
 int zlib_post_call (TYPE_1__*) ;
 int zlib_pre_call (TYPE_1__*) ;

int git_deflate_abort(git_zstream *strm)
{
 int status;

 zlib_pre_call(strm);
 status = deflateEnd(&strm->z);
 zlib_post_call(strm);
 return status;
}
