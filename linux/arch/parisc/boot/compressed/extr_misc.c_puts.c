
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pdc_iodc_print (char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int puts(const char *s)
{
 const char *nuline = s;

 while ((nuline = strchr(s, '\n')) != ((void*)0)) {
  if (nuline != s)
   pdc_iodc_print(s, nuline - s);
  pdc_iodc_print("\r\n", 2);
  s = nuline + 1;
 }
 if (*s != '\0')
  pdc_iodc_print(s, strlen(s));

 return 0;
}
