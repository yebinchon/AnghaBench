
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int selected; int items; } ;
typedef TYPE_1__ Panel ;
typedef int Object ;


 int * Vector_get (int ,int ) ;
 scalar_t__ Vector_size (int ) ;
 int assert (int ) ;

Object* Panel_getSelected(Panel* this) {
   assert (this != ((void*)0));
   if (Vector_size(this->items) > 0)
      return Vector_get(this->items, this->selected);
   else
      return ((void*)0);
}
