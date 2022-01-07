
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ selected; int items; } ;
typedef TYPE_1__ Panel ;


 int Vector_moveDown (int ,scalar_t__) ;
 scalar_t__ Vector_size (int ) ;
 int assert (int ) ;

void Panel_moveSelectedDown(Panel* this) {
   assert (this != ((void*)0));

   Vector_moveDown(this->items, this->selected);
   if (this->selected + 1 < Vector_size(this->items))
      this->selected++;
}
