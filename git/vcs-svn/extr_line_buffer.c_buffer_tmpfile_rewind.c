
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int * infile; } ;
typedef int FILE ;


 int rewind (int *) ;

FILE *buffer_tmpfile_rewind(struct line_buffer *buf)
{
 rewind(buf->infile);
 return buf->infile;
}
