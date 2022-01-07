
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int super; int meters; scalar_t__ moving; } ;
typedef int Panel ;
typedef int Object ;
typedef TYPE_1__ MetersPanel ;
typedef int Meter ;


 scalar_t__ Meter_toListItem (int *,int) ;
 int MetersPanel_setMoving (TYPE_1__*,int) ;
 int Panel_insert (int *,int,int *) ;
 int Panel_remove (int *,int) ;
 int Panel_setSelected (int *,int) ;
 int Vector_insert (int ,int,int *) ;
 int Vector_size (int ) ;
 scalar_t__ Vector_take (int ,int) ;

__attribute__((used)) static inline bool moveToNeighbor(MetersPanel* this, MetersPanel* neighbor, int selected) {
   Panel* super = (Panel*) this;
   if (this->moving) {
      if (neighbor) {
         if (selected < Vector_size(this->meters)) {
            MetersPanel_setMoving(this, 0);

            Meter* meter = (Meter*) Vector_take(this->meters, selected);
            Panel_remove(super, selected);
            Vector_insert(neighbor->meters, selected, meter);
            Panel_insert(&(neighbor->super), selected, (Object*) Meter_toListItem(meter, 0));
            Panel_setSelected(&(neighbor->super), selected);

            MetersPanel_setMoving(neighbor, 1);
            return 1;
         }
      }
   }
   return 0;
}
