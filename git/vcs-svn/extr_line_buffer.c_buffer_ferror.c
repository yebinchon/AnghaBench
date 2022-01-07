
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;


 int ferror (int ) ;

int buffer_ferror(struct line_buffer *buf)
{
 return ferror(buf->infile);
}
