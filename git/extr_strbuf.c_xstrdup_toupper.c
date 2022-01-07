
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 char toupper (char const) ;
 char* xmallocz (size_t) ;

char *xstrdup_toupper(const char *string)
{
 char *result;
 size_t len, i;

 len = strlen(string);
 result = xmallocz(len);
 for (i = 0; i < len; i++)
  result[i] = toupper(string[i]);
 return result;
}
