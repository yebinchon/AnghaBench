
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int dummy; } ;


 int die (char*,char const*) ;
 int handle_command (char const*,char const*,struct line_buffer*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void handle_line(const char *line, struct line_buffer *stdin_buf)
{
 const char *arg = strchr(line, ' ');
 if (!arg)
  die("no argument in line: %s", line);
 handle_command(line, arg + 1, stdin_buf);
}
