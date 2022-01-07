
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int needsRedraw; scalar_t__ selected; int items; } ;
typedef TYPE_1__ Panel ;
typedef int Object ;


 int * Vector_remove (int ,int) ;
 scalar_t__ Vector_size (int ) ;
 int assert (int ) ;

Object* Panel_remove(Panel* this, int i) {
   assert (this != ((void*)0));

   this->needsRedraw = 1;
   Object* removed = Vector_remove(this->items, i);
   if (this->selected > 0 && this->selected >= Vector_size(this->items))
      this->selected--;
   return removed;
}
