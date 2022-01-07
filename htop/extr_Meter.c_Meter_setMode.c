
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int mode; int h; int draw; int * drawData; } ;
struct TYPE_9__ {int h; int draw; } ;
typedef TYPE_1__ MeterMode ;
typedef TYPE_2__ Meter ;


 scalar_t__ CUSTOM_METERMODE ;
 int LAST_METERMODE ;
 scalar_t__ Meter_defaultMode (TYPE_2__*) ;
 int Meter_drawFn (TYPE_2__*) ;
 TYPE_1__** Meter_modes ;
 int Meter_updateMode (TYPE_2__*,int) ;
 scalar_t__ Meter_updateModeFn (TYPE_2__*) ;
 int assert (int) ;
 int free (int *) ;

void Meter_setMode(Meter* this, int modeIndex) {
   if (modeIndex > 0 && modeIndex == this->mode)
      return;
   if (!modeIndex)
      modeIndex = 1;
   assert(modeIndex < LAST_METERMODE);
   if (Meter_defaultMode(this) == CUSTOM_METERMODE) {
      this->draw = Meter_drawFn(this);
      if (Meter_updateModeFn(this))
         Meter_updateMode(this, modeIndex);
   } else {
      assert(modeIndex >= 1);
      free(this->drawData);
      this->drawData = ((void*)0);

      MeterMode* mode = Meter_modes[modeIndex];
      this->draw = mode->draw;
      this->h = mode->h;
   }
   this->mode = modeIndex;
}
