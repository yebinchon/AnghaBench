
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int ) ;

bool parse_option_str(const char *str, const char *option)
{
 while (*str) {
  if (!strncmp(str, option, strlen(option))) {
   str += strlen(option);
   if (!*str || *str == ',')
    return 1;
  }

  while (*str && *str != ',')
   str++;

  if (*str == ',')
   str++;
 }

 return 0;
}
