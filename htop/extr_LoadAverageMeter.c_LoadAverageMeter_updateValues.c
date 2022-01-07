
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * values; } ;
typedef TYPE_1__ Meter ;


 int Platform_getLoadAverage (int *,int *,int *) ;
 int xSnprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static void LoadAverageMeter_updateValues(Meter* this, char* buffer, int size) {
   Platform_getLoadAverage(&this->values[0], &this->values[1], &this->values[2]);
   xSnprintf(buffer, size, "%.2f/%.2f/%.2f", this->values[0], this->values[1], this->values[2]);
}
