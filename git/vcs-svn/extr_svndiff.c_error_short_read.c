
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int dummy; } ;


 scalar_t__ buffer_ferror (struct line_buffer*) ;
 int error (char*) ;
 int error_errno (char*) ;

__attribute__((used)) static int error_short_read(struct line_buffer *input)
{
 if (buffer_ferror(input))
  return error_errno("error reading delta");
 return error("invalid delta: unexpected end of file");
}
