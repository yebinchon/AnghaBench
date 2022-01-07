
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ toupper (char) ;

char *StringContainsWord(char *str1, char *str2, int casesensitive)
{
 int len, i, j;

 len = strlen(str1) - strlen(str2);
 for (i = 0; i <= len; i++, str1++)
 {

  if (i)
  {

   while(*str1 && *str1 != ' ' && *str1 != '.' && *str1 != ',' && *str1 != '!') str1++;
   if (!*str1) break;
   str1++;
  }

  for (j = 0; str2[j]; j++)
  {
   if (casesensitive)
   {
    if (str1[j] != str2[j]) break;
   }
   else
   {
    if (toupper(str1[j]) != toupper(str2[j])) break;
   }
  }

  if (!str2[j])
  {

   if (!str1[j] || str1[j] == ' ' || str1[j] == '.' || str1[j] == ',' || str1[j] == '!') return str1;
  }
 }
 return ((void*)0);
}
