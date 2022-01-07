
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_stream {int input; } ;
typedef int git_writestream ;


 int assert (struct proxy_stream*) ;
 int git_buf_put (int *,char const*,size_t) ;

__attribute__((used)) static int proxy_stream_write(
 git_writestream *s, const char *buffer, size_t len)
{
 struct proxy_stream *proxy_stream = (struct proxy_stream *)s;
 assert(proxy_stream);

 return git_buf_put(&proxy_stream->input, buffer, len);
}
