
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_buf {int ptr; } ;


 int strlen (int ) ;

int git_buf_len(const struct git_buf *buf)
{
 return strlen(buf->ptr);
}
