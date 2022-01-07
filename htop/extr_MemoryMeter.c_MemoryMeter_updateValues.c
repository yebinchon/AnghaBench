
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int total; int * values; } ;
typedef TYPE_1__ Meter ;


 int Meter_humanUnit (char*,int ,int) ;
 int Platform_setMemoryValues (TYPE_1__*) ;

__attribute__((used)) static void MemoryMeter_updateValues(Meter* this, char* buffer, int size) {
   int written;
   Platform_setMemoryValues(this);

   written = Meter_humanUnit(buffer, this->values[0], size);
   buffer += written;
   if ((size -= written) > 0) {
      *buffer++ = '/';
      size--;
      Meter_humanUnit(buffer, this->total, size);
   }
}
