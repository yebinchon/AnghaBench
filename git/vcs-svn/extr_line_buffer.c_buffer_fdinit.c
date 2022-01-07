
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;


 int fdopen (int,char*) ;

int buffer_fdinit(struct line_buffer *buf, int fd)
{
 buf->infile = fdopen(fd, "r");
 if (!buf->infile)
  return -1;
 return 0;
}
