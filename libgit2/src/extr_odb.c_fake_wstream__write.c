
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_odb_stream ;
struct TYPE_2__ {scalar_t__ written; scalar_t__ size; scalar_t__ buffer; } ;
typedef TYPE_1__ fake_wstream ;


 int assert (int) ;
 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static int fake_wstream__write(git_odb_stream *_stream, const char *data, size_t len)
{
 fake_wstream *stream = (fake_wstream *)_stream;

 assert(stream->written + len <= stream->size);

 memcpy(stream->buffer + stream->written, data, len);
 stream->written += len;
 return 0;
}
