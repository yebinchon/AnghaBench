
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char const) ;
 scalar_t__ toupper (char const) ;

__attribute__((used)) static size_t match_string(const char *date, const char *str)
{
 size_t i = 0;

 for (i = 0; *date; date++, str++, i++) {
  if (*date == *str)
   continue;
  if (toupper(*date) == toupper(*str))
   continue;
  if (!isalnum(*date))
   break;
  return 0;
 }
 return i;
}
