
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int dummy; } ;


 int buffer_ferror (struct line_buffer*) ;
 int error (char*) ;
 int error_errno (char*) ;

__attribute__((used)) static int input_error(struct line_buffer *file)
{
 if (!buffer_ferror(file))
  return error("delta preimage ends early");
 return error_errno("cannot read delta preimage");
}
