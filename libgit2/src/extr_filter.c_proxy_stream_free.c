
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_stream {int temp_buf; int input; } ;
typedef int git_writestream ;


 int assert (struct proxy_stream*) ;
 int git__free (struct proxy_stream*) ;
 int git_buf_dispose (int *) ;

__attribute__((used)) static void proxy_stream_free(git_writestream *s)
{
 struct proxy_stream *proxy_stream = (struct proxy_stream *)s;
 assert(proxy_stream);

 git_buf_dispose(&proxy_stream->input);
 git_buf_dispose(&proxy_stream->temp_buf);
 git__free(proxy_stream);
}
