
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int needsRedraw; scalar_t__ oldSelected; scalar_t__ selected; scalar_t__ scrollV; int items; } ;
typedef TYPE_1__ Panel ;


 int Vector_prune (int ) ;
 int assert (int ) ;

void Panel_prune(Panel* this) {
   assert (this != ((void*)0));

   Vector_prune(this->items);
   this->scrollV = 0;
   this->selected = 0;
   this->oldSelected = 0;
   this->needsRedraw = 1;
}
