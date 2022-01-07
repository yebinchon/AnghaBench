
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buffer_ferror (int *) ;
 char* buffer_read_line (int *) ;
 int die (char*) ;
 int die_errno (char*) ;
 int report_buffer ;

__attribute__((used)) static const char *get_response_line(void)
{
 const char *line = buffer_read_line(&report_buffer);
 if (line)
  return line;
 if (buffer_ferror(&report_buffer))
  die_errno("error reading from fast-import");
 die("unexpected end of fast-import feedback");
}
