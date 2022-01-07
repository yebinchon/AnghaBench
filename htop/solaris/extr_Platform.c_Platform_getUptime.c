
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; int ut_line; } ;


 int endutxent () ;
 struct utmpx* getutxent () ;
 int strcmp (char*,int ) ;
 int time (int *) ;

int Platform_getUptime() {
   int boot_time = 0;
   int curr_time = time(((void*)0));
   struct utmpx * ent;

   while (( ent = getutxent() )) {
      if ( !strcmp("system boot", ent->ut_line )) {
         boot_time = ent->ut_tv.tv_sec;
      }
   }

   endutxent();

   return (curr_time-boot_time);
}
