
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ errno ;
 int strtoul (char*,char**,int ) ;

int
str2u32(char *arg, uint32_t *val)
{
 char *err = ((void*)0);
 uint32_t t;

 errno=0;
 t = strtoul(arg, &err, 0);
 if (errno || (err==arg) || ((err != ((void*)0)) && *err)) {
  return -1;
 }

 *val = t;
 return 0;
}
