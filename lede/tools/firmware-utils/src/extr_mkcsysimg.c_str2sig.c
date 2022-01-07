
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;


 int strlen (char*) ;

int
str2sig(char *arg, uint32_t *sig)
{
 if (strlen(arg) != 4)
  return -1;

 *sig = arg[0] | (arg[1] << 8) | (arg[2] << 16) | (arg[3] << 24);

 return 0;
}
