
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* read ) (TYPE_1__*,char*,size_t) ;} ;
typedef TYPE_1__ git_odb_stream ;


 int stub1 (TYPE_1__*,char*,size_t) ;

int git_odb_stream_read(git_odb_stream *stream, char *buffer, size_t len)
{
 return stream->read(stream, buffer, len);
}
