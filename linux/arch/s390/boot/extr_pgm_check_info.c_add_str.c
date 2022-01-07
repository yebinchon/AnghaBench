
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *add_str(char *dst, char *src)
{
 strcpy(dst, src);
 return dst + strlen(dst);
}
