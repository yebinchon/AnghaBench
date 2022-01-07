
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fbuf; } ;
typedef TYPE_1__ loose_writestream ;
typedef int git_odb_stream ;


 int git_filebuf_write (int *,char const*,size_t) ;

__attribute__((used)) static int loose_backend__writestream_write(git_odb_stream *_stream, const char *data, size_t len)
{
 loose_writestream *stream = (loose_writestream *)_stream;
 return git_filebuf_write(&stream->fbuf, data, len);
}
