
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int currentBar; } ;
typedef TYPE_1__ Panel ;
typedef int Object ;
typedef int MetersPanel ;
typedef int MeterClass ;
typedef int Meter ;
typedef int Header ;


 int FunctionBar_draw (int ,int *) ;
 scalar_t__ Header_addMeterByClass (int *,int *,int,int) ;
 scalar_t__ Meter_toListItem (int *,int) ;
 int MetersPanel_setMoving (int *,int) ;
 int Panel_add (TYPE_1__*,int *) ;
 int Panel_setSelected (TYPE_1__*,scalar_t__) ;
 scalar_t__ Panel_size (TYPE_1__*) ;

__attribute__((used)) static inline void AvailableMetersPanel_addMeter(Header* header, Panel* panel, MeterClass* type, int param, int column) {
   Meter* meter = (Meter*) Header_addMeterByClass(header, type, param, column);
   Panel_add(panel, (Object*) Meter_toListItem(meter, 0));
   Panel_setSelected(panel, Panel_size(panel) - 1);
   MetersPanel_setMoving((MetersPanel*)panel, 1);
   FunctionBar_draw(panel->currentBar, ((void*)0));
}
