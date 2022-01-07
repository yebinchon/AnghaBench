
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {int pl; int ** columns; } ;
typedef int MeterClass ;
typedef int Meter ;
typedef TYPE_1__ Header ;


 int * Meter_new (int ,int,int *) ;
 int Vector_add (int *,int *) ;

Meter* Header_addMeterByClass(Header* this, MeterClass* type, int param, int column) {
   Vector* meters = this->columns[column];

   Meter* meter = Meter_new(this->pl, param, type);
   Vector_add(meters, meter);
   return meter;
}
