
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 scalar_t__ strchr (char const*,char const) ;

__attribute__((used)) static bool find_separator(size_t *out, const char *line, const char *separators)
{
 int whitespace_found = 0;
 const char *c;
 for (c = line; *c; c++) {
  if (strchr(separators, *c)) {
   *out = c - line;
   return 1;
  }

  if (!whitespace_found && (isalnum(*c) || *c == '-'))
   continue;
  if (c != line && (*c == ' ' || *c == '\t')) {
   whitespace_found = 1;
   continue;
  }
  break;
 }
 return 0;
}
