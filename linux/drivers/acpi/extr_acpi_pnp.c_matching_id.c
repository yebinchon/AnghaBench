
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isxdigit (char) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 char toupper (char const) ;

__attribute__((used)) static bool matching_id(const char *idstr, const char *list_id)
{
 int i;

 if (memcmp(idstr, list_id, 3))
  return 0;

 for (i = 3; i < 7; i++) {
  char c = toupper(idstr[i]);

  if (!isxdigit(c)
      || (list_id[i] != 'X' && c != toupper(list_id[i])))
   return 0;
 }
 return 1;
}
