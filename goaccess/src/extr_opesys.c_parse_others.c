
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
parse_others (char *agent, int spaces)
{
  char *p;
  int space = 0;
  p = agent;

  while (*p != ';' && *p != ')' && *p != '(' && *p != '\0') {
    if (*p == ' ')
      space++;
    if (space > spaces)
      break;
    p++;
  }
  *p = 0;

  return agent;
}
