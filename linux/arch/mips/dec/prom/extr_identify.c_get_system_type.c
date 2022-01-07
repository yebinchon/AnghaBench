
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STR_BUF_LEN ;
 char** dec_system_strings ;
 size_t mips_machtype ;
 int snprintf (char*,int,char*,char*) ;

const char *get_system_type(void)
{

 static char system[64];
 static int called = 0;

 if (called == 0) {
  called = 1;
  snprintf(system, 64, "Digital %s",
    dec_system_strings[mips_machtype]);
 }

 return system;
}
