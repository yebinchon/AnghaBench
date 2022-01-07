
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *quotes_for_value(const char *value)
{
 const char *ptr;

 if (value[0] == ' ' || value[0] == '\0')
  return "\"";

 for (ptr = value; *ptr; ++ptr) {
  if (*ptr == ';' || *ptr == '#')
   return "\"";
 }

 if (ptr[-1] == ' ')
  return "\"";

 return "";
}
