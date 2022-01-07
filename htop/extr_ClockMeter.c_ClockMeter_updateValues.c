
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_hour; scalar_t__ tm_min; } ;
struct TYPE_3__ {scalar_t__* values; } ;
typedef TYPE_1__ Meter ;


 struct tm* localtime_r (int *,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static void ClockMeter_updateValues(Meter* this, char* buffer, int size) {
   time_t t = time(((void*)0));
   struct tm result;
   struct tm *lt = localtime_r(&t, &result);
   this->values[0] = lt->tm_hour * 60 + lt->tm_min;
   strftime(buffer, size, "%H:%M:%S", lt);
}
