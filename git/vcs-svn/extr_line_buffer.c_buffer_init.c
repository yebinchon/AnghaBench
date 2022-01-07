
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;


 int fopen (char const*,char*) ;
 int stdin ;

int buffer_init(struct line_buffer *buf, const char *filename)
{
 buf->infile = filename ? fopen(filename, "r") : stdin;
 if (!buf->infile)
  return -1;
 return 0;
}
