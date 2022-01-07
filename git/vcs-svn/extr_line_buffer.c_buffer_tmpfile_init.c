
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;


 int tmpfile () ;

int buffer_tmpfile_init(struct line_buffer *buf)
{
 buf->infile = tmpfile();
 if (!buf->infile)
  return -1;
 return 0;
}
