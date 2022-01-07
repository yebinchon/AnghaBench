
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static int is_empty_line(const char *bol, const char *eol)
{
 while (bol < eol && isspace(*bol))
  bol++;
 return bol == eol;
}
