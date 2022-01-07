
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* machine; } ;


 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int uname (struct utsname*) ;

void setup_machinename(char *machine_out)
{
 struct utsname host;

 uname(&host);
 strcpy(machine_out, host.machine);
}
