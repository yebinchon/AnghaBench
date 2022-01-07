
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_writestream {int buf; } ;
typedef int git_writestream ;


 int git_buf_dispose (int *) ;

void buf_writestream_free(git_writestream *s)
{
 struct buf_writestream *stream = (struct buf_writestream *)s;
 git_buf_dispose(&stream->buf);
}
