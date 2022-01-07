
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char const*,char*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
evhttp_header_is_valid_value(const char *value)
{
 const char *p = value;

 while ((p = strpbrk(p, "\r\n")) != ((void*)0)) {

  p += strspn(p, "\r\n");

  if (*p != ' ' && *p != '\t')
   return (0);
 }
 return (1);
}
