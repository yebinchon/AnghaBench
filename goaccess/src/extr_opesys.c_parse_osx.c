
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
parse_osx (char *agent)
{
  int space = 0;
  char *p;

  p = agent;

  while (*p != ';' && *p != ')' && *p != '(' && *p != '\0') {
    if (*p == '_')
      *p = '.';
    if (*p == ' ')
      space++;
    if (space > 3)
      break;
    p++;
  }
  *p = 0;

  return agent;
}
