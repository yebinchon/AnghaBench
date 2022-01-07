
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* values; scalar_t__ total; } ;
typedef TYPE_1__ Meter ;


 int Platform_getLoadAverage (scalar_t__*,double*,double*) ;
 int xSnprintf (char*,int,char*,scalar_t__) ;

__attribute__((used)) static void LoadMeter_updateValues(Meter* this, char* buffer, int size) {
   double five, fifteen;
   Platform_getLoadAverage(&this->values[0], &five, &fifteen);
   if (this->values[0] > this->total) {
      this->total = this->values[0];
   }
   xSnprintf(buffer, size, "%.2f", this->values[0]);
}
