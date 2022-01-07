
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;


 int fgetc (int ) ;

int buffer_read_char(struct line_buffer *buf)
{
 return fgetc(buf->infile);
}
