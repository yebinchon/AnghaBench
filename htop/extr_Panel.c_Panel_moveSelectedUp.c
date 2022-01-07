
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ selected; int items; } ;
typedef TYPE_1__ Panel ;


 int Vector_moveUp (int ,scalar_t__) ;
 int assert (int ) ;

void Panel_moveSelectedUp(Panel* this) {
   assert (this != ((void*)0));

   Vector_moveUp(this->items, this->selected);
   if (this->selected > 0)
      this->selected--;
}
