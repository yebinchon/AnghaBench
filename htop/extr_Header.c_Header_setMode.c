
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {int ** columns; } ;
typedef int MeterModeId ;
typedef int Meter ;
typedef TYPE_1__ Header ;


 int Meter_setMode (int *,int ) ;
 scalar_t__ Vector_get (int *,int) ;
 int Vector_size (int *) ;

void Header_setMode(Header* this, int i, MeterModeId mode, int column) {
   Vector* meters = this->columns[column];

   if (i >= Vector_size(meters))
      return;
   Meter* meter = (Meter*) Vector_get(meters, i);
   Meter_setMode(meter, mode);
}
