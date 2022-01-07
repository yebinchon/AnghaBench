
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zstream; } ;
typedef TYPE_1__ git_packfile_stream ;


 int inflateEnd (int *) ;

void git_packfile_stream_dispose(git_packfile_stream *obj)
{
 inflateEnd(&obj->zstream);
}
