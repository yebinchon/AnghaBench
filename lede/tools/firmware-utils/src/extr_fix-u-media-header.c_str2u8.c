
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ errno ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static int str2u8(char *arg, uint8_t *val)
{
 char *err = ((void*)0);
 uint32_t t;

 errno=0;
 t = strtoul(arg, &err, 0);
 if (errno || (err==arg) || ((err != ((void*)0)) && *err)) {
  return -1;
 }

 if (t > 255)
  return -1;

 *val = t;
 return 0;
}
