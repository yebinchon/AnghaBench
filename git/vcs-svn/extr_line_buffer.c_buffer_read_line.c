
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {char* line_buffer; int infile; } ;


 scalar_t__ feof (int ) ;
 int fgets (char*,int,int ) ;
 int strlen (char*) ;

char *buffer_read_line(struct line_buffer *buf)
{
 char *end;
 if (!fgets(buf->line_buffer, sizeof(buf->line_buffer), buf->infile))

  return ((void*)0);
 end = buf->line_buffer + strlen(buf->line_buffer);
 if (end[-1] == '\n')
  end[-1] = '\0';
 else if (feof(buf->infile))
  ;
 else





  return ((void*)0);
 return buf->line_buffer;
}
