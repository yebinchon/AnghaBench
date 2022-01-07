
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *cpu_name(int level)
{
 static char buf[6];

 if (level == 64) {
  return "x86-64";
 } else {
  if (level == 15)
   level = 6;
  sprintf(buf, "i%d86", level);
  return buf;
 }
}
