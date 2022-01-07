
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int daysbuf ;
struct TYPE_3__ {int* values; int total; } ;
typedef TYPE_1__ Meter ;


 int Platform_getUptime () ;
 int xSnprintf (char*,int,char*,...) ;

__attribute__((used)) static void UptimeMeter_updateValues(Meter* this, char* buffer, int len) {
   int totalseconds = Platform_getUptime();
   if (totalseconds == -1) {
      xSnprintf(buffer, len, "(unknown)");
      return;
   }
   int seconds = totalseconds % 60;
   int minutes = (totalseconds/60) % 60;
   int hours = (totalseconds/3600) % 24;
   int days = (totalseconds/86400);
   this->values[0] = days;
   if (days > this->total) {
      this->total = days;
   }
   char daysbuf[32];
   if (days > 100) {
      xSnprintf(daysbuf, sizeof(daysbuf), "%d days(!), ", days);
   } else if (days > 1) {
      xSnprintf(daysbuf, sizeof(daysbuf), "%d days, ", days);
   } else if (days == 1) {
      xSnprintf(daysbuf, sizeof(daysbuf), "1 day, ");
   } else {
      daysbuf[0] = '\0';
   }
   xSnprintf(buffer, len, "%s%02d:%02d:%02d", daysbuf, hours, minutes, seconds);
}
