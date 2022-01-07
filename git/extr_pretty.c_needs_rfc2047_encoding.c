
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ non_ascii (int) ;

__attribute__((used)) static int needs_rfc2047_encoding(const char *line, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  int ch = line[i];
  if (non_ascii(ch) || ch == '\n')
   return 1;
  if ((i + 1 < len) && (ch == '=' && line[i+1] == '?'))
   return 1;
 }

 return 0;
}
