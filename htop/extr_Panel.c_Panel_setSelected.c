
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int selected; int items; } ;
typedef TYPE_1__ Panel ;


 int EVENT_SET_SELECTED ;
 int Panel_eventHandler (TYPE_1__*,int ) ;
 scalar_t__ Panel_eventHandlerFn (TYPE_1__*) ;
 int Vector_size (int ) ;
 int assert (int ) ;

void Panel_setSelected(Panel* this, int selected) {
   assert (this != ((void*)0));

   int size = Vector_size(this->items);
   if (selected >= size) {
      selected = size - 1;
   }
   if (selected < 0)
      selected = 0;
   this->selected = selected;
   if (Panel_eventHandlerFn(this)) {
      Panel_eventHandler(this, EVENT_SET_SELECTED);
   }
}
