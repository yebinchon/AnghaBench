
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int units ;


 int sprintf (char*,char*,unsigned int,char) ;

char *ppsize(char *buf, unsigned long long size)
{


 static char units[] = { 'K', 'M', 'G', 'T', 'P', 'E' };
 int base = 0;
 while (size >= 10000 && base < sizeof(units)-1) {

  size = (size >> 10) + !!(size & (1<<9));
  base++;
 }
 sprintf(buf, "%u %cB", (unsigned)size, units[base]);

 return buf;
}
