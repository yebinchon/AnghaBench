
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
parse_android (char *agent)
{
  char *p;
  p = agent;

  while (*p != ';' && *p != ')' && *p != '(' && *p != '\0')
    p++;
  *p = 0;

  return agent;
}
