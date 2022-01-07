
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int life ;
typedef int acline ;
typedef int ACPresence ;


 int AC_ABSENT ;
 int AC_ERROR ;
 int AC_PRESENT ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

void Battery_getData(double* level, ACPresence* isOnAC) {
   int life;
   size_t life_len = sizeof(life);
   if (sysctlbyname("hw.acpi.battery.life", &life, &life_len, ((void*)0), 0) == -1)
      *level = -1;
   else
      *level = life;

   int acline;
   size_t acline_len = sizeof(acline);
   if (sysctlbyname("hw.acpi.acline", &acline, &acline_len, ((void*)0), 0) == -1)
      *isOnAC = AC_ERROR;
   else
      *isOnAC = acline == 0 ? AC_ABSENT : AC_PRESENT;
}
