
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_stream {int fd; scalar_t__ open; } ;
typedef int git_writestream ;


 int assert (int) ;
 int p_close (int ) ;

__attribute__((used)) static int checkout_stream_close(git_writestream *s)
{
 struct checkout_stream *stream = (struct checkout_stream *)s;
 assert(stream && stream->open);

 stream->open = 0;
 return p_close(stream->fd);
}
