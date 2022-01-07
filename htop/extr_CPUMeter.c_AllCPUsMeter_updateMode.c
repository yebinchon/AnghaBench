
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int h; } ;
struct TYPE_7__ {int mode; int h; scalar_t__ drawData; } ;
typedef TYPE_1__ Meter ;


 int AllCPUsMeter_getRange (TYPE_1__*,int*,int*) ;
 TYPE_4__** Meter_modes ;
 int Meter_name (TYPE_1__*) ;
 int Meter_setMode (TYPE_1__*,int) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static void AllCPUsMeter_updateMode(Meter* this, int mode) {
   Meter** meters = (Meter**) this->drawData;
   this->mode = mode;
   int h = Meter_modes[mode]->h;
   int start, count;
   AllCPUsMeter_getRange(this, &start, &count);
   for (int i = 0; i < count; i++) {
      Meter_setMode(meters[i], mode);
   }
   if (strchr(Meter_name(this), '2'))
      this->h = h * ((count+1) / 2);
   else
      this->h = h * count;
}
