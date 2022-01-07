
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int ARRAY_SIZE (char**) ;
 int _ (char*) ;
 int die (int ,char const*) ;
 char** object_type_strings ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

int type_from_string_gently(const char *str, ssize_t len, int gentle)
{
 int i;

 if (len < 0)
  len = strlen(str);

 for (i = 1; i < ARRAY_SIZE(object_type_strings); i++)
  if (!strncmp(str, object_type_strings[i], len) &&
      object_type_strings[i][len] == '\0')
   return i;

 if (gentle)
  return -1;

 die(_("invalid object type \"%s\""), str);
}
