
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void trim_trailing_spaces(char *buf)
{
 char *p, *last_space = ((void*)0);

 for (p = buf; *p; p++)
  switch (*p) {
  case ' ':
   if (!last_space)
    last_space = p;
   break;
  case '\\':
   p++;
   if (!*p)
    return;

  default:
   last_space = ((void*)0);
  }

 if (last_space)
  *last_space = '\0';
}
