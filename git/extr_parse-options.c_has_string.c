
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int has_string(const char *it, const char **array)
{
 while (*array)
  if (!strcmp(it, *(array++)))
   return 1;
 return 0;
}
