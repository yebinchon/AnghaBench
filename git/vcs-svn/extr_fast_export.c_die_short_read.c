
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int dummy; } ;


 scalar_t__ buffer_ferror (struct line_buffer*) ;
 int die (char*) ;
 int die_errno (char*) ;

__attribute__((used)) static void die_short_read(struct line_buffer *input)
{
 if (buffer_ferror(input))
  die_errno("error reading dump file");
 die("invalid dump: unexpected end of file");
}
