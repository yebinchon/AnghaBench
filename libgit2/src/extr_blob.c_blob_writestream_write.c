
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_writestream ;
struct TYPE_2__ {int fbuf; } ;
typedef TYPE_1__ blob_writestream ;


 int git_filebuf_write (int *,char const*,size_t) ;

__attribute__((used)) static int blob_writestream_write(git_writestream *_stream, const char *buffer, size_t len)
{
 blob_writestream *stream = (blob_writestream *) _stream;

 return git_filebuf_write(&stream->fbuf, buffer, len);
}
