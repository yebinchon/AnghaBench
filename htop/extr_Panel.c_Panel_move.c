
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int needsRedraw; } ;
typedef TYPE_1__ Panel ;


 int assert (int ) ;

void Panel_move(Panel* this, int x, int y) {
   assert (this != ((void*)0));

   this->x = x;
   this->y = y;
   this->needsRedraw = 1;
}
