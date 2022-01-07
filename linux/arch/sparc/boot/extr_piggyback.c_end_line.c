
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int end_line(const char *line)
{
 if (strcmp(line + 10, " _end\n") == 0)
  return 1;
 else if (strcmp (line + 18, " _end\n") == 0)
  return 1;
 return 0;
}
