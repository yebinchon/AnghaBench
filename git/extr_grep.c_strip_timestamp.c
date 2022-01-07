
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strip_timestamp(char *bol, char **eol_p)
{
 char *eol = *eol_p;
 int ch;

 while (bol < --eol) {
  if (*eol != '>')
   continue;
  *eol_p = ++eol;
  ch = *eol;
  *eol = '\0';
  return ch;
 }
 return 0;
}
