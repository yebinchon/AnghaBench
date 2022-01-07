
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compress_stream {scalar_t__ mode; } ;
typedef int git_writestream ;


 scalar_t__ GIT_FILTER_TO_ODB ;
 int compress_stream_write__deflated (struct compress_stream*,char const*,size_t) ;
 int compress_stream_write__inflated (struct compress_stream*,char const*,size_t) ;

__attribute__((used)) static int compress_stream_write(git_writestream *s, const char *buffer, size_t len)
{
 struct compress_stream *stream = (struct compress_stream *)s;

 return (stream->mode == GIT_FILTER_TO_ODB) ?
  compress_stream_write__deflated(stream, buffer, len) :
  compress_stream_write__inflated(stream, buffer, len);
}
