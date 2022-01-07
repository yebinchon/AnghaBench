
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_writestream {int buf; } ;
typedef int git_writestream ;


 int git_buf_put (int *,char const*,size_t) ;

int buf_writestream_write(git_writestream *s, const char *buf, size_t len)
{
 struct buf_writestream *stream = (struct buf_writestream *)s;
 return git_buf_put(&stream->buf, buf, len);
}
