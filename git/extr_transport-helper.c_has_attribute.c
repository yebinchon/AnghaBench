
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchrnul (char const*,char) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int has_attribute(const char *attrs, const char *attr)
{
 int len;
 if (!attrs)
  return 0;

 len = strlen(attr);
 for (;;) {
  const char *space = strchrnul(attrs, ' ');
  if (len == space - attrs && !strncmp(attrs, attr, len))
   return 1;
  if (!*space)
   return 0;
  attrs = space + 1;
 }
}
