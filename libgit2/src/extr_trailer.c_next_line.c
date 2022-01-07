
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *next_line(const char *str)
{
 const char *nl = strchr(str, '\n');

 if (nl) {
  return nl + 1;
 } else {

  return str + strlen(str);
 }
}
