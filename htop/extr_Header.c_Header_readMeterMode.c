
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_5__ {int ** columns; } ;
struct TYPE_4__ {int mode; } ;
typedef int MeterModeId ;
typedef TYPE_1__ Meter ;
typedef TYPE_2__ Header ;


 scalar_t__ Vector_get (int *,int) ;

MeterModeId Header_readMeterMode(Header* this, int i, int column) {
   Vector* meters = this->columns[column];

   Meter* meter = (Meter*) Vector_get(meters, i);
   return meter->mode;
}
