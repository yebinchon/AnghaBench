
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool looks_like_command_line_option(const char *s)
{
 if (s && s[0] == '-')
  return 1;

 return 0;
}
