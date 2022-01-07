
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int dummy; } ;
typedef scalar_t__ off_t ;


 scalar_t__ buffer_skip_bytes (struct line_buffer*,scalar_t__) ;
 int input_error (struct line_buffer*) ;

__attribute__((used)) static int skip_or_whine(struct line_buffer *file, off_t gap)
{
 if (buffer_skip_bytes(file, gap) != gap)
  return input_error(file);
 return 0;
}
