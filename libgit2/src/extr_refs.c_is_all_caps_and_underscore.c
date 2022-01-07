
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;

__attribute__((used)) static bool is_all_caps_and_underscore(const char *name, size_t len)
{
 size_t i;
 char c;

 assert(name && len > 0);

 for (i = 0; i < len; i++)
 {
  c = name[i];
  if ((c < 'A' || c > 'Z') && c != '_')
   return 0;
 }

 if (*name == '_' || name[len - 1] == '_')
  return 0;

 return 1;
}
