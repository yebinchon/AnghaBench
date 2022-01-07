
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;

__attribute__((used)) static int is_empty(const char *s)
{
 while (*s != '\0') {
  if (!isspace(*s))
   return 0;
  s++;
 }
 return 1;
}
